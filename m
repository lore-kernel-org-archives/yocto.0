Return-Path: <prakashpks15@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4776E008E4; Thu,  5 Apr 2018 10:42:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (prakashpks15[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f196.google.com (mail-io0-f196.google.com
	[209.85.223.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DA2AE005A9
	for <yocto@yoctoproject.org>; Thu,  5 Apr 2018 10:42:48 -0700 (PDT)
Received: by mail-io0-f196.google.com with SMTP id d6so29614425iog.1
	for <yocto@yoctoproject.org>; Thu, 05 Apr 2018 10:42:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=CDDMrLpwnD8TicjNaaSX7NvwkKQQybghxo94NH7b6N4=;
	b=ixitxe7V5DLUEbR3wURII+u4cn/hwIUTaKE66W5ignDO4poKpx0zR4oMwEOvlDDlQ2
	UcHkmrZA3zRk9phjdV9eTa6p89RMrCXWaHw+6iVgI6BlRyFUL6FZiqf/ne8o87aB17ZW
	krY/lmfaWvtT62DA8ktfSsMQb/yB6x0UTRyx1MNR73oTpmHDgK6FlUAjwkqZt3GdQES5
	2xnIgDsft60Ma4kyexlZy6Xf97mwEpOkc59a1ZHJPTkR0rZw7bq+q0BuAFLKTIknQdPt
	qwFMMf2/w90uurD9E7+wA6oxXzzPqtkRlE/vZMS0FB6mYGrrwwQ7iYal7WcYa8sFieVH
	MeuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=CDDMrLpwnD8TicjNaaSX7NvwkKQQybghxo94NH7b6N4=;
	b=fDe1EgD6JeSNKkwY7pTdbbHiIMqUg9hkxKo1tFvivWpj5eh5j8VCO1hBg8cwFTbE9v
	0CqjJuzPxKXy+Ofugfinti2pJMmHtIWjBCNFiQdD0vK6wx8CPBYnmj+F0qplOvdw3X47
	CxaPWkISd3yT+QeGGecsn8sa+DvyY+MUJqYLm4n1TAXnAjI6iOG63AjUbuUMBxS/1YnW
	9kdZSceVhl855ulnNZRTTVe0ThaZLjIRGToiFqXTtSS/WnE0Zu0h0zqMpXhtmPbMJJgQ
	N36xnnfGKzG8BnWNtnUa4UeBIZELn/R/tLGgZTbqPF6+qRVBdPp5vQue2MNsYG+6qnsq
	0jww==
X-Gm-Message-State: AElRT7HcApaB5vYlruc2dM7iMNGA5YmPkN9iGupzsz+gAb9RLMpHyzM5
	Hl/af7xLNmFH7nGTPwTHZJzS3cdaM8D2kw/GZz5Q3Q==
X-Google-Smtp-Source: AIpwx48vY2YDGyZz/tvo16TDmZFsvSy9RbqxD87aIM+rXHpHrX1yLvnekGOHwdcAKH0Umc0O1nuxLykPsVMqBmJUk48=
X-Received: by 10.107.154.141 with SMTP id c135mr21023837ioe.10.1522950168109; 
	Thu, 05 Apr 2018 10:42:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.2.153.151 with HTTP; Thu, 5 Apr 2018 10:42:47 -0700 (PDT)
From: Prakash Ks <prakashpks15@gmail.com>
Date: Thu, 5 Apr 2018 23:12:47 +0530
Message-ID: <CAET8a4GQ-OVZsgVC2Aq04xhH+_buRJGOUFqMgP=wCBSjzGasxA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Encrypt Root FIle system as part of RPI sdcard image using cryptsetup.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 05 Apr 2018 17:42:49 -0000
Content-Type: multipart/alternative; boundary="001a1140f61cc7e77405691d7788"

--001a1140f61cc7e77405691d7788
Content-Type: text/plain; charset="UTF-8"

Hi,

I wanted to encrypt the Root file system parttition for the RPI3 SDcard
image, it would be great if anybody have some suggestion on this.

Note: Below are the steps i am using to encrypt, same kind of steps i want
to do automate, when we issue dd command automatically it should create
encrypted RFS partition.
sudo cryptsetup -s 512 luksFormat /dev/sdb3 /home/tel/enc.key

sudo cryptsetup luksOpen -d /home/tel/enc.key /dev/sdb3 example

sudo mkfs.ext4 /dev/mapper/example

sudo mount -t ext4 /dev/mapper/example /mnt/block3

sudo mount -t ext4 /dev/sdb2 /mnt/block2

sudo cp -ax /mnt/block2/* /mnt/block3/

sudo umount /mnt/block3

sudo umount /mnt/block2

sudo cryptsetup luksClose example


Decryption part i have added as part of boot up process, working perfectly
fine. I need help in encrypting using cryptsetup.


Thanks!
Prakash
-- 
Thanks and Regards,
Prakash K S
+91 9620140303

--001a1140f61cc7e77405691d7788
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>I wanted to encrypt the =
Root file system parttition for the RPI3 SDcard image, it would be great if=
 anybody have some suggestion on this.</div><div><br></div><div>Note: Below=
 are the steps i am using to encrypt, same kind of steps i want to do autom=
ate, when we issue dd command automatically it should create encrypted RFS =
partition.</div><div><span style=3D"color:rgb(0,0,0);font-family:Calibri,Ar=
ial,Helvetica,sans-serif;font-size:16px;font-style:normal;font-variant-liga=
tures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal=
;text-align:start;text-indent:0px;text-transform:none;white-space:normal;wo=
rd-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:init=
ial;text-decoration-color:initial;float:none;display:inline">sudo cryptsetu=
p -s 512 luksFormat /dev/sdb3 /home/tel/enc.key</span><br style=3D"color:rg=
b(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif;font-size:16px;font=
-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-w=
eight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-trans=
form:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,=
255);text-decoration-style:initial;text-decoration-color:initial"><br style=
=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif;font-si=
ze:16px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:n=
ormal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0p=
x;text-transform:none;white-space:normal;word-spacing:0px;background-color:=
rgb(255,255,255);text-decoration-style:initial;text-decoration-color:initia=
l"><span style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans=
-serif;font-size:16px;font-style:normal;font-variant-ligatures:normal;font-=
variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;=
text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;bac=
kground-color:rgb(255,255,255);text-decoration-style:initial;text-decoratio=
n-color:initial;float:none;display:inline">sudo cryptsetup luksOpen -d /hom=
e/tel/enc.key /dev/sdb3 example</span><br style=3D"color:rgb(0,0,0);font-fa=
mily:Calibri,Arial,Helvetica,sans-serif;font-size:16px;font-style:normal;fo=
nt-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter=
-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white-=
space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decora=
tion-style:initial;text-decoration-color:initial"><br style=3D"color:rgb(0,=
0,0);font-family:Calibri,Arial,Helvetica,sans-serif;font-size:16px;font-sty=
le:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weigh=
t:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transform=
:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255)=
;text-decoration-style:initial;text-decoration-color:initial"><span style=
=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif;font-si=
ze:16px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:n=
ormal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0p=
x;text-transform:none;white-space:normal;word-spacing:0px;background-color:=
rgb(255,255,255);text-decoration-style:initial;text-decoration-color:initia=
l;float:none;display:inline">sudo mkfs.ext4 /dev/mapper/example</span><br s=
tyle=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif;fon=
t-size:16px;font-style:normal;font-variant-ligatures:normal;font-variant-ca=
ps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-inden=
t:0px;text-transform:none;white-space:normal;word-spacing:0px;background-co=
lor:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:in=
itial"><br style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sa=
ns-serif;font-size:16px;font-style:normal;font-variant-ligatures:normal;fon=
t-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:star=
t;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;b=
ackground-color:rgb(255,255,255);text-decoration-style:initial;text-decorat=
ion-color:initial"><span style=3D"color:rgb(0,0,0);font-family:Calibri,Aria=
l,Helvetica,sans-serif;font-size:16px;font-style:normal;font-variant-ligatu=
res:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;t=
ext-align:start;text-indent:0px;text-transform:none;white-space:normal;word=
-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:initia=
l;text-decoration-color:initial;float:none;display:inline">sudo mount -t ex=
t4 /dev/mapper/example /mnt/block3</span><br style=3D"color:rgb(0,0,0);font=
-family:Calibri,Arial,Helvetica,sans-serif;font-size:16px;font-style:normal=
;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;let=
ter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;whi=
te-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-dec=
oration-style:initial;text-decoration-color:initial"><br style=3D"color:rgb=
(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif;font-size:16px;font-=
style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-we=
ight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transf=
orm:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,2=
55);text-decoration-style:initial;text-decoration-color:initial"><span styl=
e=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif;font-s=
ize:16px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:=
normal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0=
px;text-transform:none;white-space:normal;word-spacing:0px;background-color=
:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:initi=
al;float:none;display:inline">sudo mount -t ext4 /dev/sdb2 /mnt/block2</spa=
n><br style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-se=
rif;font-size:16px;font-style:normal;font-variant-ligatures:normal;font-var=
iant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;tex=
t-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;backgr=
ound-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-c=
olor:initial"><br style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helve=
tica,sans-serif;font-size:16px;font-style:normal;font-variant-ligatures:nor=
mal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-ali=
gn:start;text-indent:0px;text-transform:none;white-space:normal;word-spacin=
g:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text-=
decoration-color:initial"><span style=3D"color:rgb(0,0,0);font-family:Calib=
ri,Arial,Helvetica,sans-serif;font-size:16px;font-style:normal;font-variant=
-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:n=
ormal;text-align:start;text-indent:0px;text-transform:none;white-space:norm=
al;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style=
:initial;text-decoration-color:initial;float:none;display:inline">sudo cp -=
ax /mnt/block2/* /mnt/block3/</span><br style=3D"color:rgb(0,0,0);font-fami=
ly:Calibri,Arial,Helvetica,sans-serif;font-size:16px;font-style:normal;font=
-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-s=
pacing:normal;text-align:start;text-indent:0px;text-transform:none;white-sp=
ace:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decorati=
on-style:initial;text-decoration-color:initial"><br style=3D"color:rgb(0,0,=
0);font-family:Calibri,Arial,Helvetica,sans-serif;font-size:16px;font-style=
:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:=
400;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:n=
one;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);t=
ext-decoration-style:initial;text-decoration-color:initial"><span style=3D"=
color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif;font-size:1=
6px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:norma=
l;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;te=
xt-transform:none;white-space:normal;word-spacing:0px;background-color:rgb(=
255,255,255);text-decoration-style:initial;text-decoration-color:initial;fl=
oat:none;display:inline">sudo umount /mnt/block3</span><br style=3D"color:r=
gb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif;font-size:16px;fon=
t-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-=
weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tran=
sform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255=
,255);text-decoration-style:initial;text-decoration-color:initial"><br styl=
e=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif;font-s=
ize:16px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:=
normal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0=
px;text-transform:none;white-space:normal;word-spacing:0px;background-color=
:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:initi=
al"><span style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,san=
s-serif;font-size:16px;font-style:normal;font-variant-ligatures:normal;font=
-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start=
;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;ba=
ckground-color:rgb(255,255,255);text-decoration-style:initial;text-decorati=
on-color:initial;float:none;display:inline">sudo umount /mnt/block2</span><=
br style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif=
;font-size:16px;font-style:normal;font-variant-ligatures:normal;font-varian=
t-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-i=
ndent:0px;text-transform:none;white-space:normal;word-spacing:0px;backgroun=
d-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-colo=
r:initial"><br style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetic=
a,sans-serif;font-size:16px;font-style:normal;font-variant-ligatures:normal=
;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:=
start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0=
px;background-color:rgb(255,255,255);text-decoration-style:initial;text-dec=
oration-color:initial"><span style=3D"color:rgb(0,0,0);font-family:Calibri,=
Arial,Helvetica,sans-serif;font-size:16px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:norm=
al;text-align:start;text-indent:0px;text-transform:none;white-space:normal;=
word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:in=
itial;text-decoration-color:initial;float:none;display:inline">sudo cryptse=
tup luksClose example</span><br></div><div><span style=3D"color:rgb(0,0,0);=
font-family:Calibri,Arial,Helvetica,sans-serif;font-size:16px;font-style:no=
rmal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400=
;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none=
;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text=
-decoration-style:initial;text-decoration-color:initial;float:none;display:=
inline"><br></span></div><div><br></div><div>Decryption part i have added a=
s part of boot up process, working perfectly fine. I need help in encryptin=
g using cryptsetup.</div><div><br></div><div><br></div><div>Thanks!</div><d=
iv>Prakash</div>-- <br><div class=3D"gmail_signature" data-smartmail=3D"gma=
il_signature">Thanks and Regards,<div>Prakash K S</div><div>+91 9620140303<=
/div></div>
</div>

--001a1140f61cc7e77405691d7788--
