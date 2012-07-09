Return-Path: <andrei@gherzan.ro>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E4A1E01443
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2012 03:54:39 -0700 (PDT)
Received: by yenl5 with SMTP id l5so11187313yen.35
	for <yocto@yoctoproject.org>; Mon, 09 Jul 2012 03:54:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=Emc4wP7Wb0v0Bso7Y2dTCahSxSA5VWVPvWPS5MmSzhQ=;
	b=EfmGPjCOK7iluRpl5OcUS+hn5uqy/OOiOJ1D7EDm5NporMKtXg1e7Q1BLtPwumls+2
	Y3H5LpFHQihHk5tW5GH0R+w4GytlJY42cqgdtaRRwVd5o6A7A3glBQae4K8/2jpzSBmM
	dCKurx80kZPTPUfo1VR1z2hQcOsSUd3cM9oPmmLsqgfpt4W3W5730gZ+V8wcHk+Y6wtG
	Y5rK8OqkQtYEm3S0full/BbpA23ZRNdaMQrVZCgCdiJohgRwZh2JSNJxoLFNSXNQTLaE
	ERKdFCxtjyTevOrQdkqiqWZxauzlTb1U9bhaCyVPExwP5J10tdrNlGU57+ozI+BbAiWL
	dIRg==
Received: by 10.50.159.196 with SMTP id xe4mr7937134igb.43.1341831278271; Mon,
	09 Jul 2012 03:54:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.98.162 with HTTP; Mon, 9 Jul 2012 03:54:18 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <CAFP0WUFmMWJs-hmWpYiaVEYibzD9d3LF9mYCF9CCTLLXD=k5Nw@mail.gmail.com>
References: <CAFP0WUHEnfRK4fGK=h6cFwf6DwbiVu+rX8n70vSjpEZ=dCVJ6g@mail.gmail.com>
	<CAK18fxEiH-p_TQH2+rZtqCLu7Ppb1qSMWKRsd=CgphQV_T=5mA@mail.gmail.com>
	<CAFP0WUFmMWJs-hmWpYiaVEYibzD9d3LF9mYCF9CCTLLXD=k5Nw@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 9 Jul 2012 13:54:18 +0300
Message-ID: <CAK18fxFGZmT7UNMU_=WTVBknr_PNzyvo11TFxn=fYQ9SoKeoLQ@mail.gmail.com>
To: kishore sheik ahamed <linuxinme@gmail.com>
X-Gm-Message-State: ALoCoQlURiTEYRMDTOLybTMGp2kGKrHIJFV0mpCRPiZIsvEzUH5YHqNmhmGTD4p0tktaFjYsnYPe
Cc: yocto@yoctoproject.org
Subject: Re: Help: Yocto build error
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 09 Jul 2012 10:54:39 -0000
Content-Type: multipart/alternative; boundary=14dae934059bb09d1a04c4637028

--14dae934059bb09d1a04c4637028
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Jul 9, 2012 at 1:22 PM, kishore sheik ahamed <linuxinme@gmail.com>wrote:

>
> On Mon, Jul 9, 2012 at 3:03 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>
>> On Sat, Jul 7, 2012 at 10:54 AM, kishore sheik ahamed <
>> linuxinme@gmail.com> wrote:
>>
>>> Hello there
>>>
>>> I am trying to build Yocto on ubuntu 10.10
>>> I get the following error.
>>> Could someone help me?
>>>
>>> Do you have all the needed packages for you Linux distribution?
>>
>> http://www.yoctoproject.org/docs/current/yocto-project-qs/yocto-project-qs.html
>>
>>
>> Ubuntu
>> The packages you need for a supported Ubuntu distribution are shown in
>> the following command:
>>
>>      $ sudo apt-get install sed wget subversion git-core coreutils \
>>      unzip texi2html texinfo libsdl1.2-dev docbook-utils fop gawk \
>>      python-pysqlite2 diffstat make gcc build-essential xsltproc \
>>      g++ desktop-file-utils chrpath libgl1-mesa-dev libglu1-mesa-dev \
>>      autoconf automake groff libtool xterm libxml-parser-perl
>>
>
> I have all the packages installed, it seems a linker error of ld not
> supporting -z switch. I have the 2.20.51.20100908-0ubuntu2 version of
> binutils package installed. How should I proceed
>

I have Version: 2.21.53.20110810-0ubuntu5.1 and everything seems to be ok.
@g

--14dae934059bb09d1a04c4637028
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_quote">On Mon, Jul 9, 2012 at 1:22 PM, kishore sheik ah=
amed <span dir=3D"ltr">&lt;<a href=3D"mailto:linuxinme@gmail.com" target=3D=
"_blank">linuxinme@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex">

<br><div class=3D"gmail_quote">On Mon, Jul 9, 2012 at 3:03 PM, Andrei Gherz=
an <span dir=3D"ltr">&lt;<a href=3D"mailto:andrei@gherzan.ro" target=3D"_bl=
ank">andrei@gherzan.ro</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex">


<div class=3D"gmail_quote"><div>On Sat, Jul 7, 2012 at 10:54 AM, kishore sh=
eik ahamed <span dir=3D"ltr">&lt;<a href=3D"mailto:linuxinme@gmail.com" tar=
get=3D"_blank">linuxinme@gmail.com</a>&gt;</span> wrote:<br><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">





Hello there<br><br>I am trying to build Yocto on ubuntu 10.10 <br>I get the=
 following error.<br>Could someone help me?<br><br></blockquote></div><div>=
Do you have all the needed packages for you Linux=A0distribution?</div><div=
>


<a href=3D"http://www.yoctoproject.org/docs/current/yocto-project-qs/yocto-=
project-qs.html" target=3D"_blank">http://www.yoctoproject.org/docs/current=
/yocto-project-qs/yocto-project-qs.html</a>=A0</div>


<div><br></div><div><div>Ubuntu</div><div>The packages you need for a suppo=
rted Ubuntu distribution are shown in the following command:</div><div><br>=
</div><div>=A0 =A0 =A0$ sudo apt-get install sed wget subversion git-core c=
oreutils \</div>





<div>=A0 =A0 =A0unzip texi2html texinfo libsdl1.2-dev docbook-utils fop gaw=
k \</div><div>=A0 =A0 =A0python-pysqlite2 diffstat make gcc build-essential=
 xsltproc \</div><div>=A0 =A0 =A0g++ desktop-file-utils chrpath libgl1-mesa=
-dev libglu1-mesa-dev \</div>





<div>=A0 =A0 =A0autoconf automake groff libtool xterm libxml-parser-perl</d=
iv></div></div></blockquote><div>=A0</div></div>I have all the packages ins=
talled, it seems a linker error of ld not supporting -z switch. I have the =
2.20.51.20100908-0ubuntu2 version of binutils package installed. How should=
 I proceed<br>

</blockquote><div><br></div><div>I have=A0Version: 2.21.53.20110810-0ubuntu=
5.1 and=A0everything=A0seems to be ok.</div><div>@g</div><div><br></div><di=
v>=A0</div></div><br>

--14dae934059bb09d1a04c4637028--
