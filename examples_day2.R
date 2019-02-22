cats<-data.frame(coat=c("calico","black","tabby"), weight=c(2.1,3.4,5.6),likes_string=c(1,0,1))
write.csv(x=cats,file="data/feline.csv",row.names = FALSE)
cats<-read.csv(file = "data/feline.csv")
ct<-cats$coat
wt<-cats$weight
ls<-cats$likes_string
# discover that the weight is incorrect
cats$weight+2
ct<-cats$weight-2
ct<-ct+2
paste("my cat is ",cats$coat)
cats$coat+cats$weight
typeof(cats$coat)
typeof(ct)
typeof("A")
file.show("data/feline.csv")
str(cats$coat)
typeof(cats$coat)
my_vector<-vector(length = 3)
my_vector
another_vec <- vector(mode="character", length = 3)
another_vec
str(another_vec)
combine_vec<-c(2,6,3)
quiz_vec<-c(2,6,"3")
str(quiz_vec)
typeof(quiz_vec)
char_vec<-c('2','4','6')
chr2numvec<-as.numeric(char_vec)
chr2log_vec = as.logical(char_vec)
cats$likes_string
cats$likes_string<-as.logical(cats$likes_string)
ab_vec<-c("a","b")
combine_ex<-c(ab_vec,"swc")
cpx<-as.complex(char_vec)
cpx[2]<-4-.5i
s<- seq(1,10,by = 0.1)
subs <-s[1:10]
names(my_ex)<-c("a","b","c","d")
my_ex<-5:8
names
my_ex
str(cats$coat)
cats$coat[4]<-"black"
file.show(cats$coat)
