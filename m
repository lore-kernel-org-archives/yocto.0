Return-Path: <jerry.lian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8339E00CF7; Fri,  1 Dec 2017 07:58:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jerry.lian[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f54.google.com (mail-oi0-f54.google.com
	[209.85.218.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F5C2E00CE8
	for <yocto@yoctoproject.org>; Fri,  1 Dec 2017 07:58:48 -0800 (PST)
Received: by mail-oi0-f54.google.com with SMTP id w125so7417449oie.7
	for <yocto@yoctoproject.org>; Fri, 01 Dec 2017 07:58:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=kxnytPu60u2K24/RIEOt4TTEM0YOkxm61mTRh/nMPQg=;
	b=LzOsTeklh1+ouTIMhMEOtBZOWLNYM+aPZBCemEg8kV95VTTm9JFNvIwxvkUoEM85QT
	0vgVVPfyWu13AmCNqRwizgCs69Ha+1PeLP++OPvGT+EoP+Kdy3/MRiGntEOuQaxY2jjp
	qR52oa1d8uF/YbQMmmhEYvwJ/qIA8cvfNLoKhQ3u05CneUEx6gzNR0hyn0Qmyo60EMHI
	4laB7wlU0/T47LVd6vubk4p6irCL8uGxgkAWhB3kprEhTjXrw3Kkob94GAf4L1zp5gC3
	NXn6kb5RsGqRDaUmNBlVMgWd+t723P5ojjr8EGOvPqEftNm44p/VduOD84Zsy0EU91PV
	cLqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=kxnytPu60u2K24/RIEOt4TTEM0YOkxm61mTRh/nMPQg=;
	b=S0OAk6ZgFcetoFI+tIEdodFnIsFszsEtvG0ZWRXkuK+TT4WQuttsnrdsKvk4u8Ma1i
	b7MHqbQhzfKGoJVLoYg/GmnIm09fkrSJL5vqcYK4Vpwd7gP5zymqbECLmxaOnWJAnsOI
	T0opfp0Cc7GDrJBJGeKUJ6lRb6r6vK+50JxoN9X6QR6kKep5cV2hCn6d0oCCBKiwbZOg
	L8BFSXhyJmZAV898k6yQMiqxIpfCzZka6DK3gacN6aukdKawXgqUiz0ljU7RJcVFW5fD
	iTua0LXZy9tkeGBvEfj17dQuSKyxobXgVHBhFBEqE8n6+X5Iyd2awnBAbIvSiBmvio50
	0LxQ==
X-Gm-Message-State: AJaThX7C1c69r9oP5GIe1RveUIkGlK914TtcwpVbtYBDgMv4sf9ZjgqH
	5pgKIVm2Eea6PsItP6JduEyEF7R5h4QeLlX1XmrqyWNR
X-Google-Smtp-Source: AGs4zMYfrVFqEGgO9J6/YWLI6L3jY+O98uGO/miHdUEmVmNJPMO02Yj7skHiM4poQcyCdKJvY7ZeVxIw67lilwON0gw=
X-Received: by 10.202.114.22 with SMTP id p22mr7860736oic.327.1512143928172;
	Fri, 01 Dec 2017 07:58:48 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.42.113 with HTTP; Fri, 1 Dec 2017 07:58:47 -0800 (PST)
In-Reply-To: <6bf472a2260f6ba66c3b759b7f30a0b2@sw-optimization.com>
References: <CAE0QtjP3GYLNDQHZaE1-M9pDvLuP6AtnAMD_xduv5ZwFJfZ9BQ@mail.gmail.com>
	<4c8c114e6c9cc6e224e49e1f237016f6@sw-optimization.com>
	<f025a6f43d84a016ffe06e78f4967daf@sw-optimization.com>
	<CAE0QtjNKpPWUq---XQY4i2Z7ovsE1HH9xMND=kuY6YCPm0rMnw@mail.gmail.com>
	<6bf472a2260f6ba66c3b759b7f30a0b2@sw-optimization.com>
From: Jerry Lian <jerry.lian@gmail.com>
Date: Fri, 1 Dec 2017 10:58:47 -0500
Message-ID: <CAE0QtjMKTZgL08DEq5+84fDhdR_nnBtONFyk9=87qyPpAQABCw@mail.gmail.com>
To: Eric Schwarz <eas@sw-optimization.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Yocto SDK: how to deploy application with step "make install" to target?
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
X-List-Received-Date: Fri, 01 Dec 2017 15:58:50 -0000
Content-Type: multipart/alternative; boundary="001a11352e52b0262c055f497162"

--001a11352e52b0262c055f497162
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Eric again.
* So you mean "copy -Rfa" can match folder-by-folder, so long as the
folder-tree are the same?
                (if yes, that is super great!!!)
* I check that "make install" copy files to one folder, so that is easy for
deployment!

Another question:
* My application actually has another step: "make modules_install" (surely
step "make modules" also)
* But I got error (see below):
               what could be wrong with "SSL error"? isn't build already
passed successfully?

------------------------------------------------------------
----------------------------------------
jerry@yct:~/ecat-33b922$ make modules_install
make -C "/usr/src/linux-headers-4.10.0-28-generic"
M=3D"/home/jerry/ecat-33b922" \
    INSTALL_MOD_DIR=3D"ethercat" modules_install
make[1]: Entering directory '/usr/src/linux-headers-4.10.0-28-generic'
mkdir: cannot create directory =E2=80=98/lib/modules/4.10.0-28-generic/ethe=
rcat=E2=80=99:
Permission denied
Makefile:1536: recipe for target '_emodinst_' failed
make[1]: *** [_emodinst_] Error 1
make[1]: Leaving directory '/usr/src/linux-headers-4.10.0-28-generic'
Makefile:934: recipe for target 'modules_install' failed
make: *** [modules_install] Error 2

jerry@yct:~/ecat-33b922$ sudo make modules_install
make -C "/usr/src/linux-headers-4.10.0-28-generic"
M=3D"/home/jerry/ecat-33b922" \
    INSTALL_MOD_DIR=3D"ethercat" modules_install
make[1]: Entering directory '/usr/src/linux-headers-4.10.0-28-generic'
  INSTALL /home/jerry/ecat-33b922/devices/ec_generic.ko
At main.c:158:
- SSL error:02001002:system library:fopen:No such file or directory:
bss_file.c:175
- SSL error:2006D080:BIO routines:BIO_new_file:no such file: bss_file.c:178
sign-file: certs/signing_key.pem: No such file or directory
  INSTALL /home/jerry/ecat-33b922/examples/mini/ec_mini.ko
At main.c:158:
- SSL error:02001002:system library:fopen:No such file or directory:
bss_file.c:175
- SSL error:2006D080:BIO routines:BIO_new_file:no such file: bss_file.c:178
sign-file: certs/signing_key.pem: No such file or directory
  INSTALL /home/jerry/ecat-33b922/master/ec_master.ko
At main.c:158:
- SSL error:02001002:system library:fopen:No such file or directory:
bss_file.c:175
- SSL error:2006D080:BIO routines:BIO_new_file:no such file: bss_file.c:178
sign-file: certs/signing_key.pem: No such file or directory
  DEPMOD  4.10.0-28-generic
make[1]: Leaving directory '/usr/src/linux-headers-4.10.0-28-generic'

jerry@yct:~/ecat-33b922$
------------------------------------------------------------
-------------------------------------------

Thanks!






On Fri, Dec 1, 2017 at 10:37 AM, Eric Schwarz <eas@sw-optimization.com>
wrote:

> Am 01.12.2017 16:15, schrieb Jerry Lian:
>
> Thanks Eric for your explanation!
>> * (I know I can build the app within yocto build, but sometimes I prefer
>> the SDK method outside yocto build.)
>>
>> * So just copy manually? I thought there are some tricks  that I don't
>> know.
>>
>>
> Acutally that's how we are doing it ...
>
> Now I have follow-up question:
>> * It seems that "make install" will copy different files to different
>> folders
>> * Can I do like these:?
>> --- make
>> --- copy (via scp)
>> --- make install
>> * Or it needs to be:
>> --- make
>> --- make install
>>
>
> Install the cross-compiled stuff on your local disc e.g. into a "transfer=
"
> directory. Then copy it to the target.
> On the target 'cp -Rfa <transfer-dir>/* /' should do it if the basic
> directory structure fits to your rootFS.
>
> --- copy (via scp) -----then how do I know: what files to go which folder=
?
>> --- can you explain:
>> "... you may supply a custom install prefix directory to configure." ---
>> how?
>>
>>
> There is IMHO no standardized variable available. Just look into the
> configure script how the variable is named and if it is actually availabl=
e
> at all.
>
>
> Thanks!
>>
>> On Fri, Dec 1, 2017 at 9:34 AM, Eric Schwarz <eas@sw-optimization.com>
>> wrote:
>> Am 01.12.2017 15:16, schrieb Eric Schwarz:
>>
>> Hi Jerry,
>>
>> Am 01.12.2017 15:07, schrieb Jerry Lian:
>>
>> I am new to embedded linux, and some concepts confuse me:
>> * I have downloaded an Autotools-based application to run on my board.
>> * If I boot the board with original image/original SDK, I normally
>> build/install it with steps:
>> ----- ./bootstrap
>> ----- ./configure
>> ----- make
>> ----- make install
>> You may build your app within yocto build process so your application is
>> contained in your rootFS directly.
>>
>> * Now if I boot the board with yocto image without SDK, how can I deploy
>> the application?
>> ---- (surely I do "bitbake -c populate_sdk some-image", and source the
>> environment!)
>>
>> ----- ./bootstrap (Yocto SDK on host)
>> ----- ./configure (Yocto SDK on host)
>> ----- make         (Yocto SDK on host)
>> ----- make install (???)
>> If you build it w/ the SDK outside of the yocto build process just
>> install it to a local directory and copy all the stuff w/ e.g. scp onto
>> your boards rootFS.
>>
>  ... you may supply a custom install prefix directory to configure.
>
> * How to do "make install"? (I want to install it on target, but how?)
>>>
>>> Thanks!
>>>
>>
>> Cheers
>> Eric
>>
>

--001a11352e52b0262c055f497162
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Eric again.<div>* So you mean &quot;copy -Rfa&quot;=
 can match folder-by-folder, so long as the folder-tree are the same?</div>=
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (if yes, that =
is super great!!!)</div><div>* I check that &quot;make install&quot; copy f=
iles to one folder, so that is easy for deployment!<br></div><div><br></div=
><div>Another question:</div><div>* My application actually has another ste=
p: &quot;make modules_install&quot; (surely step &quot;make modules&quot; a=
lso)</div><div>* But I got error (see below):<br></div><div>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 what =
could be wrong with &quot;SSL error&quot;? isn&#39;t build already passed s=
uccessfully?<br><br></div><div>------------------------------<wbr>---------=
---------------------<wbr>------------------------------<wbr>----------</di=
v><div>jerry@yct:~/ecat-33b922$ make modules_install<br>make -C &quot;/usr/=
src/linux-headers-4.10.0-28-generic&quot; M=3D&quot;/home/jerry/ecat-33b922=
&quot; \<br>=C2=A0=C2=A0=C2=A0 INSTALL_MOD_DIR=3D&quot;ethercat&quot; modul=
es_install<br>make[1]: Entering directory &#39;/usr/src/linux-headers-4.10.=
0-28-generic&#39;<br>mkdir: cannot create directory =E2=80=98/lib/modules/4=
.10.0-28-generic/ethercat=E2=80=99: Permission denied<br>Makefile:1536: rec=
ipe for target &#39;_emodinst_&#39; failed<br>make[1]: *** [_emodinst_] Err=
or 1<br>make[1]: Leaving directory &#39;/usr/src/linux-headers-4.10.0-28-ge=
neric&#39;<br>Makefile:934: recipe for target &#39;modules_install&#39; fai=
led<br>make: *** [modules_install] Error 2<br><br>jerry@yct:~/ecat-33b922$ =
sudo make modules_install<br>make -C &quot;/usr/src/linux-headers-4.10.0-28=
-generic&quot; M=3D&quot;/home/jerry/ecat-33b922&quot; \<br>=C2=A0=C2=A0=C2=
=A0 INSTALL_MOD_DIR=3D&quot;ethercat&quot; modules_install<br>make[1]: Ente=
ring directory &#39;/usr/src/linux-headers-4.10.0-28-generic&#39;<br>=C2=A0=
 INSTALL /home/jerry/ecat-33b922/devices/ec_generic.ko<br>At main.c:158:<br=
>- SSL error:02001002:system library:fopen:No such file or directory: bss_f=
ile.c:175<br>- SSL error:2006D080:BIO routines:BIO_new_file:no such file: b=
ss_file.c:178<br>sign-file: certs/signing_key.pem: No such file or director=
y<br>=C2=A0 INSTALL /home/jerry/ecat-33b922/examples/mini/ec_mini.ko<br>At =
main.c:158:<br>- SSL error:02001002:system library:fopen:No such file or di=
rectory: bss_file.c:175<br>- SSL error:2006D080:BIO routines:BIO_new_file:n=
o such file: bss_file.c:178<br>sign-file: certs/signing_key.pem: No such fi=
le or directory<br>=C2=A0 INSTALL /home/jerry/ecat-33b922/master/ec_master.=
ko<br>At main.c:158:<br>- SSL error:02001002:system library:fopen:No such f=
ile or directory: bss_file.c:175<br>- SSL error:2006D080:BIO routines:BIO_n=
ew_file:no such file: bss_file.c:178<br>sign-file: certs/signing_key.pem: N=
o such file or directory<br>=C2=A0 DEPMOD=C2=A0 4.10.0-28-generic<br>make[1=
]: Leaving directory &#39;/usr/src/linux-headers-4.10.0-28-generic&#39;<br>=
<br>jerry@yct:~/ecat-33b922$ <br></div><div>------------------------------<=
wbr>------------------------------<wbr>------------------------------<wbr>-=
------------</div><div><br></div><div>Thanks!<br></div><div><br></div><div>=
<br></div><div><br></div><div><br></div><div><br></div></div><div class=3D"=
gmail_extra"><br><div class=3D"gmail_quote">On Fri, Dec 1, 2017 at 10:37 AM=
, Eric Schwarz <span dir=3D"ltr">&lt;<a href=3D"mailto:eas@sw-optimization.=
com" target=3D"_blank">eas@sw-optimization.com</a>&gt;</span> wrote:<br><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex"><span class=3D"">Am 01.12.2017 16:15, schrieb J=
erry Lian:<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Thanks Eric for your explanation!<br>
* (I know I can build the app within yocto build, but sometimes I prefer th=
e SDK method outside yocto build.)<br>
<br>
* So just copy manually? I thought there are some tricks=C2=A0 that I don&#=
39;t know.<br>
<br>
</blockquote>
<br></span>
Acutally that&#39;s how we are doing it ...<span class=3D""><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Now I have follow-up question:<br>
* It seems that &quot;make install&quot; will copy different files to diffe=
rent folders<br>
* Can I do like these:?<br>
--- make<br>
--- copy (via scp)<br>
--- make install<br>
* Or it needs to be:<br>
--- make<br>
--- make install<br>
</blockquote>
<br></span>
Install the cross-compiled stuff on your local disc e.g. into a &quot;trans=
fer&quot; directory. Then copy it to the target.<br>
On the target &#39;cp -Rfa &lt;transfer-dir&gt;/* /&#39; should do it if th=
e basic directory structure fits to your rootFS.<span class=3D""><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
--- copy (via scp) -----then how do I know: what files to go which folder?<=
br>
--- can you explain:<br>
&quot;... you may supply a custom install prefix directory to configure.&qu=
ot; --- how?<br>
<br>
</blockquote>
<br></span>
There is IMHO no standardized variable available. Just look into the config=
ure script how the variable is named and if it is actually available at all=
.<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Thanks!<br>
<br>
On Fri, Dec 1, 2017 at 9:34 AM, Eric Schwarz &lt;<a href=3D"mailto:eas@sw-o=
ptimization.com" target=3D"_blank">eas@sw-optimization.com</a>&gt; wrote:<b=
r>
Am 01.12.2017 15:16, schrieb Eric Schwarz:<br>
<br>
Hi Jerry,<br>
<br>
Am 01.12.2017 15:07, schrieb Jerry Lian:<br>
<br>
I am new to embedded linux, and some concepts confuse me:<br>
* I have downloaded an Autotools-based application to run on my board.<br>
* If I boot the board with original image/original SDK, I normally build/in=
stall it with steps:<br>
----- ./bootstrap<br>
----- ./configure<br>
----- make<br>
----- make install<br>
You may build your app within yocto build process so your application is co=
ntained in your rootFS directly.<br>
<br>
* Now if I boot the board with yocto image without SDK, how can I deploy th=
e application?<br>
---- (surely I do &quot;bitbake -c populate_sdk some-image&quot;, and sourc=
e the environment!)<br>
<br>
----- ./bootstrap (Yocto SDK on host)<br>
----- ./configure (Yocto SDK on host)<br>
----- make=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(Yocto SDK on host)<br>
----- make install (???)<br>
If you build it w/ the SDK outside of the yocto build process just install =
it to a local directory and copy all the stuff w/ e.g. scp onto your boards=
 rootFS.<br>
</blockquote>
=C2=A0... you may supply a custom install prefix directory to configure.<br=
>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
* How to do &quot;make install&quot;? (I want to install it on target, but =
how?)<br>
<br>
Thanks!<br>
</blockquote>
<br>
Cheers<br>
Eric<br>
</blockquote>
</div></div></blockquote></div><br></div>

--001a11352e52b0262c055f497162--
