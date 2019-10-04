library(stringr)

ana<-read.csv("/Users/rterrill/Desktop/alpha_codes.csv")

ana<-ana[complete.cases(ana),]

alpha<-as.character(ana$alpha)



hashword = paste(sort(unlist(strsplit(alpha,""))), collapse = "")


wordlist<-as.character(ana$alpha)

letters<-strsplit(wordlist,"")

sortedLetters<-list()

for(i in 1:length(letters)){
	sortedLetters[[i]]<-sort(letters[[i]])
}


pasted<-list()

for(i in 1:length(letters)){
	pasted[[i]]<-paste(sortedLetters[[i]][1:4],collapse="")
}

sortedList <- data.frame(matrix(unlist(pasted), nrow=length(pasted), byrow=T))
names(sortedList)<-"sortedAlphas"

ana$sortedAlpha<-as.character(sortedList$sortedAlphas)


ana<-ana[order(ana$sortedAlpha),]



ana.short<-ana[,c(1,2,3,8)]



sortedTable<-as.data.frame(table(ana.short$sortedAlpha))

table(sortedtable$Freq)

ana.3<-sortedTable[sortedTable$Freq==3,]


ACGO<-ana.short[ana.short$sortedAlpha=="ACGO",]
ACHO<-ana.short[ana.short$sortedAlpha=="ACHO",]
AEFP<-ana.short[ana.short$sortedAlpha=="AEFP",]
AHOW<-ana.short[ana.short$sortedAlpha=="AHOW",]
AHST<-ana.short[ana.short$sortedAlpha=="AHST",]
ALOR<-ana.short[ana.short$sortedAlpha=="ALOR",]
AMOW<-ana.short[ana.short$sortedAlpha=="AMOW",]
ELOW<-ana.short[ana.short$sortedAlpha=="ELOW",]
NOSW<-ana.short[ana.short$sortedAlpha=="NOSW",]
OPRS<-ana.short[ana.short$sortedAlpha=="OPRS",]
ORST<-ana.short[ana.short$sortedAlpha=="ORST",]


     num alpha                    sp sortedAlpha
246 1720  CAGO          Canada Goose        ACGO
247 1721  ACGO Aleutian Canada Goose        ACGO
312 2190  COGA      Common Gallinule        ACGO

      num alpha                   sp sortedAlpha
326  2280  AMWO    American Woodcock        AMOW
528  3829  OWAM Orange-winged Amazon        AMOW
1011 6790  MOWA     Mourning Warbler        AMOW


     num alpha                 sp sortedAlpha
491 3660  LEOW     Long-eared Owl        ELOW
516 3810  ELOW            Elf Owl        ELOW
565 4080  LEWO Lewis's Woodpecker        ELOW


266 1830  ROSP        Roseate Spoonbill        OPRS
487 3640  OSPR                   Osprey        OPRS
505 3734  PRSO Puerto Rican Screech-Owl        OPRS