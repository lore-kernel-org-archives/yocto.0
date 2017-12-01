Return-Path: <jerry.lian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 384BEE00CF7; Fri,  1 Dec 2017 08:56:57 -0800 (PST)
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
	*      [209.85.218.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f46.google.com (mail-oi0-f46.google.com
	[209.85.218.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E97A5E00CE8
	for <yocto@yoctoproject.org>; Fri,  1 Dec 2017 08:56:55 -0800 (PST)
Received: by mail-oi0-f46.google.com with SMTP id t81so7555083oih.13
	for <yocto@yoctoproject.org>; Fri, 01 Dec 2017 08:56:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=1WVEjsL3qTOaN4E7mbaYrOu5yne8CENix+UQWW7ugLE=;
	b=X5LQ/6j0E6L4K8Ko0sl4oCSGmFNeIjiyHbZ5EnjdxxGCLCNYm72yJwYNCUzBXmzPc9
	iUAenBO8uMfF+iHOIRwgUNN5Hdq1z93WM5Qg3pym+gsWmKd4SSGpvl9ruiKbHFR7C9Hl
	gHMS6ZRJLVOkfisjyHdqTaePSZS25qy5YYDBpsVB81grkQJwKf97McSnK/IkQVgcgJsy
	1LUH0L3Tcps3eLjSVYOjo7rkXV7f1dWj09b4ZnPHKsIjppWo4BvoQ+gI0hNsWXfHAW4U
	5KjgiLK74EE/TThmwde6uNdT20V990T37UdZnp76i9wP2oEtFL8KEJjt7oUZl971mqL1
	JvHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=1WVEjsL3qTOaN4E7mbaYrOu5yne8CENix+UQWW7ugLE=;
	b=IG5Z4Gd79z17QkDtHBRpBP3LoN2jdROdNDDnBChj94bzrGH+HVPNTRSb2OJKt0icyg
	V11vY7hro5ecMqVGjnb+mCjHTFmCxPO/ZJstWy3YxhkhQnGpZrtYmHEAG2BYq4RzGah3
	JTLuqdgXZ5NM3+7HBsW0/tzlX71min8oXOVoFkh79Vd81CVllpEA+8EVGCEyi0ZjIiNI
	oEVYkgTgz4nqTUAiwAZDqL5J+wMpjSr2DdALooGUWUM7FsAZLjd/aQ1IDXD26xamhNRK
	YL/PLVA60BsVDTLl6DE7dYkTeMUePoboXADGVnTet97CsHFjMwf2sX2ejy/weW6ZlTpZ
	g6Pw==
X-Gm-Message-State: AJaThX4XOZBM+3IA1TidHcC7fwWzIcQUsnNWjVYOzxGUsqOJF32ePgqu
	GdEhZYGVIX6YIESteHv3M8gSDQ/L6zy7eHnqoMzJeg==
X-Google-Smtp-Source: AGs4zMYATzpOXumQUC+VFlU9FABo6xJZdLW+8s90xSj/yf12FM6skltauf06G4xHzNaw4ofjuLD6Rk04a+8dWo0urF0=
X-Received: by 10.202.173.210 with SMTP id w201mr7475543oie.190.1512147414998; 
	Fri, 01 Dec 2017 08:56:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.42.113 with HTTP; Fri, 1 Dec 2017 08:56:54 -0800 (PST)
In-Reply-To: <a6e23b98d023564fc881bd409c8a67e4@sw-optimization.com>
References: <CAE0QtjP3GYLNDQHZaE1-M9pDvLuP6AtnAMD_xduv5ZwFJfZ9BQ@mail.gmail.com>
	<4c8c114e6c9cc6e224e49e1f237016f6@sw-optimization.com>
	<f025a6f43d84a016ffe06e78f4967daf@sw-optimization.com>
	<CAE0QtjNKpPWUq---XQY4i2Z7ovsE1HH9xMND=kuY6YCPm0rMnw@mail.gmail.com>
	<6bf472a2260f6ba66c3b759b7f30a0b2@sw-optimization.com>
	<CAE0QtjMKTZgL08DEq5+84fDhdR_nnBtONFyk9=87qyPpAQABCw@mail.gmail.com>
	<a6e23b98d023564fc881bd409c8a67e4@sw-optimization.com>
From: Jerry Lian <jerry.lian@gmail.com>
Date: Fri, 1 Dec 2017 11:56:54 -0500
Message-ID: <CAE0QtjMCKJ8vGA4Zvd3DRFEeQz+ZOT+AtZhxFht3jbZwK7vS7A@mail.gmail.com>
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
X-List-Received-Date: Fri, 01 Dec 2017 16:56:57 -0000
Content-Type: multipart/alternative; boundary="001a113ce4f684e7e8055f4a41a9"

--001a113ce4f684e7e8055f4a41a9
Content-Type: text/plain; charset="UTF-8"

OK, that is what confused me: I DID try "make modules_install" on host!

So according to what you said, the right procedure is:
* do          "make install"                on host, then copy to target:
* don't do "make modules_install" on host, but make a package first, then
copy to target and install.
* right?

* then how to make a package?
* how do I know which are "relevant other files"?

sorry for my newbie questions, thanks!





On Fri, Dec 1, 2017 at 11:30 AM, Eric Schwarz <eas@sw-optimization.com>
wrote:

> Am 01.12.2017 16:58, schrieb Jerry Lian:
>
> Thanks Eric again.
>> * So you mean "copy -Rfa" can match folder-by-folder, so long as the
>> folder-tree are the same?
>> (if yes, that is super great!!!)
>>
>
> Yes.
>
> * I check that "make install" copy files to one folder, so that is easy
>> for deployment!
>>
>> Another question:
>> * My application actually has another step: "make modules_install"
>> (surely step "make modules" also)
>> * But I got error (see below):
>> what could be wrong with "SSL error"? isn't build already passed
>> successfully?
>>
>
> You are doing the 'make modules_install' on the target or where else? You
> need to build the modules within the Yocto environment and may create a
> package e.g. *.deb you may install later on the target or copy the modules
> by hand including relevant other files needed. Obviously the system tries
> to recompile the kernel modules. That's what 'make modules_install' does.
>
>
>
>> ------------------------------------------------------------
>> ----------------------------------------
>> jerry@yct:~/ecat-33b922$ make modules_install
>> make -C "/usr/src/linux-headers-4.10.0-28-generic"
>> M="/home/jerry/ecat-33b922" \
>> INSTALL_MOD_DIR="ethercat" modules_install
>> make[1]: Entering directory '/usr/src/linux-headers-4.10.0-28-generic'
>> mkdir: cannot create directory '/lib/modules/4.10.0-28-generic/ethercat':
>> Permission denied
>> Makefile:1536: recipe for target '_emodinst_' failed
>> make[1]: *** [_emodinst_] Error 1
>> make[1]: Leaving directory '/usr/src/linux-headers-4.10.0-28-generic'
>> Makefile:934: recipe for target 'modules_install' failed
>> make: *** [modules_install] Error 2
>>
>> jerry@yct:~/ecat-33b922$ sudo make modules_install
>> make -C "/usr/src/linux-headers-4.10.0-28-generic"
>> M="/home/jerry/ecat-33b922" \
>> INSTALL_MOD_DIR="ethercat" modules_install
>> make[1]: Entering directory '/usr/src/linux-headers-4.10.0-28-generic'
>> INSTALL /home/jerry/ecat-33b922/devices/ec_generic.ko
>> At main.c:158:
>> - SSL error:02001002:system library:fopen:No such file or directory:
>> bss_file.c:175
>> - SSL error:2006D080:BIO routines:BIO_new_file:no such file:
>> bss_file.c:178
>> sign-file: certs/signing_key.pem: No such file or directory
>> INSTALL /home/jerry/ecat-33b922/examples/mini/ec_mini.ko
>> At main.c:158:
>> - SSL error:02001002:system library:fopen:No such file or directory:
>> bss_file.c:175
>> - SSL error:2006D080:BIO routines:BIO_new_file:no such file:
>> bss_file.c:178
>> sign-file: certs/signing_key.pem: No such file or directory
>> INSTALL /home/jerry/ecat-33b922/master/ec_master.ko
>> At main.c:158:
>> - SSL error:02001002:system library:fopen:No such file or directory:
>> bss_file.c:175
>> - SSL error:2006D080:BIO routines:BIO_new_file:no such file:
>> bss_file.c:178
>> sign-file: certs/signing_key.pem: No such file or directory
>> DEPMOD  4.10.0-28-generic
>> make[1]: Leaving directory '/usr/src/linux-headers-4.10.0-28-generic'
>>
>> jerry@yct:~/ecat-33b922$
>> ------------------------------------------------------------
>> -------------------------------------------
>>
>> Thanks!
>>
>> On Fri, Dec 1, 2017 at 10:37 AM, Eric Schwarz <eas@sw-optimization.com>
>> wrote:
>> Am 01.12.2017 16:15, schrieb Jerry Lian:
>>
>> Thanks Eric for your explanation!
>> * (I know I can build the app within yocto build, but sometimes I prefer
>> the SDK method outside yocto build.)
>>
>> * So just copy manually? I thought there are some tricks  that I don't
>> know.
>>
>> Acutally that's how we are doing it ...
>>
>> Now I have follow-up question:
>> * It seems that "make install" will copy different files to different
>> folders
>> * Can I do like these:?
>> --- make
>> --- copy (via scp)
>> --- make install
>> * Or it needs to be:
>> --- make
>> --- make install Install the cross-compiled stuff on your local disc e.g.
>> into a "transfer" directory. Then copy it to the target.
>> On the target 'cp -Rfa <transfer-dir>/* /' should do it if the basic
>> directory structure fits to your rootFS.
>>
>> --- copy (via scp) -----then how do I know: what files to go which folder?
>> --- can you explain:
>> "... you may supply a custom install prefix directory to configure." ---
>> how?
>>
>> There is IMHO no standardized variable available. Just look into the
>> configure script how the variable is named and if it is actually available
>> at all.
>>
>> Thanks!
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
>> your boards rootFS.  ... you may supply a custom install prefix directory
>> to configure.
>>
>> * How to do "make install"? (I want to install it on target, but how?)
>>
>> Thanks!
>> Cheers
>> Eric
>>
>

--001a113ce4f684e7e8055f4a41a9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">OK, that is what confused me: I DID try &quot;make modules=
_install&quot; on host!<div><br><div>So according to what you said, the rig=
ht procedure is:</div><div>* do=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;mak=
e install&quot;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 on h=
ost, then copy to target:</div><div>* don&#39;t do &quot;make modules_insta=
ll&quot; on host, but make a package first, then copy to target and install=
.</div></div><div>* right?</div><div><br></div><div>* then how to make a pa=
ckage?</div><div>* how do I know which are &quot;relevant other files&quot;=
?</div><div><br></div><div>sorry for my newbie questions, thanks!</div><div=
><br></div><div><br></div><div><br></div><div><br></div></div><div class=3D=
"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Dec 1, 2017 at 11:30 A=
M, Eric Schwarz <span dir=3D"ltr">&lt;<a href=3D"mailto:eas@sw-optimization=
.com" target=3D"_blank">eas@sw-optimization.com</a>&gt;</span> wrote:<br><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex"><span class=3D"">Am 01.12.2017 16:58, schrieb =
Jerry Lian:<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Thanks Eric again.<br>
* So you mean &quot;copy -Rfa&quot; can match folder-by-folder, so long as =
the folder-tree are the same?<br>
(if yes, that is super great!!!)<br>
</blockquote>
<br></span>
Yes.<span class=3D""><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
* I check that &quot;make install&quot; copy files to one folder, so that i=
s easy for deployment!<br>
<br>
Another question:<br>
* My application actually has another step: &quot;make modules_install&quot=
; (surely step &quot;make modules&quot; also)<br>
* But I got error (see below):<br>
what could be wrong with &quot;SSL error&quot;? isn&#39;t build already pas=
sed successfully?<br>
</blockquote>
<br></span>
You are doing the &#39;make modules_install&#39; on the target or where els=
e? You need to build the modules within the Yocto environment and may creat=
e a package e.g. *.deb you may install later on the target or copy the modu=
les by hand including relevant other files needed. Obviously the system tri=
es to recompile the kernel modules. That&#39;s what &#39;make modules_insta=
ll&#39; does.<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
------------------------------<wbr>------------------------------<wbr>-----=
-------------------------<wbr>----------<br>
jerry@yct:~/ecat-33b922$ make modules_install<br>
make -C &quot;/usr/src/linux-headers-4.10.0<wbr>-28-generic&quot; M=3D&quot=
;/home/jerry/ecat-33b922&quot; \<br>
INSTALL_MOD_DIR=3D&quot;ethercat&quot; modules_install<br>
make[1]: Entering directory &#39;/usr/src/linux-headers-4.10.0<wbr>-28-gene=
ric&#39;<br>
mkdir: cannot create directory &#39;/lib/modules/4.10.0-28-generi<wbr>c/eth=
ercat&#39;: Permission denied<br>
Makefile:1536: recipe for target &#39;_emodinst_&#39; failed<br>
make[1]: *** [_emodinst_] Error 1<br>
make[1]: Leaving directory &#39;/usr/src/linux-headers-4.10.0<wbr>-28-gener=
ic&#39;<br>
Makefile:934: recipe for target &#39;modules_install&#39; failed<br>
make: *** [modules_install] Error 2<br>
<br>
jerry@yct:~/ecat-33b922$ sudo make modules_install<br>
make -C &quot;/usr/src/linux-headers-4.10.0<wbr>-28-generic&quot; M=3D&quot=
;/home/jerry/ecat-33b922&quot; \<br>
INSTALL_MOD_DIR=3D&quot;ethercat&quot; modules_install<br>
make[1]: Entering directory &#39;/usr/src/linux-headers-4.10.0<wbr>-28-gene=
ric&#39;<br>
INSTALL /home/jerry/ecat-33b922/device<wbr>s/ec_generic.ko<br>
At main.c:158:<br>
- SSL error:02001002:system library:fopen:No such file or directory: bss_fi=
le.c:175<br>
- SSL error:2006D080:BIO routines:BIO_new_file:no such file: bss_file.c:178=
<br>
sign-file: certs/signing_key.pem: No such file or directory<br>
INSTALL /home/jerry/ecat-33b922/exampl<wbr>es/mini/ec_mini.ko<br>
At main.c:158:<br>
- SSL error:02001002:system library:fopen:No such file or directory: bss_fi=
le.c:175<br>
- SSL error:2006D080:BIO routines:BIO_new_file:no such file: bss_file.c:178=
<br>
sign-file: certs/signing_key.pem: No such file or directory<br>
INSTALL /home/jerry/ecat-33b922/master<wbr>/ec_master.ko<br>
At main.c:158:<br>
- SSL error:02001002:system library:fopen:No such file or directory: bss_fi=
le.c:175<br>
- SSL error:2006D080:BIO routines:BIO_new_file:no such file: bss_file.c:178=
<br>
sign-file: certs/signing_key.pem: No such file or directory<br>
DEPMOD=C2=A0 4.10.0-28-generic<br>
make[1]: Leaving directory &#39;/usr/src/linux-headers-4.10.0<wbr>-28-gener=
ic&#39;<br>
<br>
jerry@yct:~/ecat-33b922$<br>
------------------------------<wbr>------------------------------<wbr>-----=
-------------------------<wbr>-------------<br>
<br>
Thanks!<br>
<br>
On Fri, Dec 1, 2017 at 10:37 AM, Eric Schwarz &lt;<a href=3D"mailto:eas@sw-=
optimization.com" target=3D"_blank">eas@sw-optimization.com</a>&gt; wrote:<=
br>
Am 01.12.2017 16:15, schrieb Jerry Lian:<br>
<br>
Thanks Eric for your explanation!<br>
* (I know I can build the app within yocto build, but sometimes I prefer th=
e SDK method outside yocto build.)<br>
<br>
* So just copy manually? I thought there are some tricks=C2=A0 that I don&#=
39;t know.<br>
<br>
Acutally that&#39;s how we are doing it ...<br>
<br>
Now I have follow-up question:<br>
* It seems that &quot;make install&quot; will copy different files to diffe=
rent folders<br>
* Can I do like these:?<br>
--- make<br>
--- copy (via scp)<br>
--- make install<br>
* Or it needs to be:<br>
--- make<br>
--- make install Install the cross-compiled stuff on your local disc e.g. i=
nto a &quot;transfer&quot; directory. Then copy it to the target.<br>
On the target &#39;cp -Rfa &lt;transfer-dir&gt;/* /&#39; should do it if th=
e basic directory structure fits to your rootFS.<br>
<br>
--- copy (via scp) -----then how do I know: what files to go which folder?<=
br>
--- can you explain:<br>
&quot;... you may supply a custom install prefix directory to configure.&qu=
ot; --- how?<br>
<br>
There is IMHO no standardized variable available. Just look into the config=
ure script how the variable is named and if it is actually available at all=
.<br>
<br>
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
 rootFS.=C2=A0 ... you may supply a custom install prefix directory to conf=
igure.<br>
<br>
* How to do &quot;make install&quot;? (I want to install it on target, but =
how?)<br>
<br>
Thanks!<br>
Cheers<br>
Eric<br>
</blockquote>
</div></div></blockquote></div><br></div>

--001a113ce4f684e7e8055f4a41a9--
