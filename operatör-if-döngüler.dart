Operatörler
+ topla
- çıkar
* çarpma
/ bölme 
~/ //tam sayı bölme “alt+ü” tuşu
% //mod alma kalanı hesaplar 5%2=1
X=3;
Y=++x; // burada X e bir ekler y ye atar
İlişkilsel Operatörler
İf (x==y) // x ye y eşit ise
İf(x!=y) // x ye ye eşit değil ise
İf(x>y) // x y den büyük mü
İf(x>=y) // x yden büyük veya eşitmi
Atama Operatörleri
X=3
X+=3 // x=x+3 demek
Locikal Operatörler
İf (x||y) // x veya y demek “alt-“ tuşuna bas
İf (x && y) // x ve y demek
() fonksiyon oluşturma
[] liste oluşturma
. sınıfların elemanlarına ulaşma
? koşul operatörü
?? null mu kontrol et
x??=3; // eğer x e önceden bi değer atanmadı ise 3 olarak ata
if koşul
if(x==9){} // x dokuza eşit ile işlem yap
if(x!=9){} // x dokuza eşit değil ise işlem yap
kısa if yazımı
x==0 ? print(“sayı sıfır”):print(“sayı 0 değil”) // x>y?komut1:komut2
for döngüsü
for(int i=0;i<=9;i++){
} // i sıfırdan başlat 9 kere dön süs parantez içindeki kodları 9 kere döndürür
While döngüsü
While(x<10){
}//x 9 dan küçük olduğu müddetçe dön
Do While döngüsü
Do{
}While(x<10) //x 9 dan küçük olduğu müddetçe dön
Break; // bu kod döngüden çıkar
Continue;// bu başka bir döndü varsa oraya çıkar

Switch case 
Switch(gün){
Case 1: print(‘pazartesi’);break;
Case 2:print(‘salı’);break;
Default: print(‘böyle bir gün yok’);}
Throw try catch
Throw print(‘sunucuya ulaşilamadı’); //hata mesajı vermek için kullanılır
Try{
//Hata olabilecek kod bloğu
}catch(hata){
//hata olunca yapılacak kod bloğu
}
//uygulamayı çökmekten kurtarır
