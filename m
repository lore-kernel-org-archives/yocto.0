Return-Path: <icastell@nayarsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0BC88E00BFF; Tue, 17 Apr 2018 03:06:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.43 listed in list.dnswl.org]
Received: from mail-it0-f43.google.com (mail-it0-f43.google.com
	[209.85.214.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF1BDE00A6A
	for <yocto@yoctoproject.org>; Tue, 17 Apr 2018 03:06:52 -0700 (PDT)
Received: by mail-it0-f43.google.com with SMTP id x144-v6so14307562itc.0
	for <yocto@yoctoproject.org>; Tue, 17 Apr 2018 03:06:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nayarsystems.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=/dDnvMTFqQ4lVdo4Z6vkDu/D7Cf/wBsfsTBlLqog02E=;
	b=TFsZOdfCL2TA1j//+ZtnmDQJl8W0KwcJmOSrNgEz2Q+AIhfwkWNfj8iSEnWLMib34K
	I0MSrPHOsLt5AWffOGG0mJ9Kf4hlXmF4VUReTjlvLRAwtKUTwEp3Y9Fe2mn7bthzD1dL
	0TV7wOrC4pw9c+GXY1wgf2a1zXdKOW+F6WxmE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=/dDnvMTFqQ4lVdo4Z6vkDu/D7Cf/wBsfsTBlLqog02E=;
	b=HBGjILYwla0dklRN+wwvFdgtd2OY0zCBu4mZNJDDS0+dOawF7k2zXhzEZ0f9RXJFQ/
	6YyJ+8Y8A42h2VZwURYJ/rugOtUbE3U95CF1oqXqw33rp2kxD/enO31DXcR5fRSTbdBx
	vGKhcwbrYZfrVug0t7NmRye+9ICCiOirn6Sf8h7HgKB5NQpf6sjxOF/0EhJD7vxr2isa
	1whPoQe8GA5FbP7B1Nr4UYJfWnwH+1mKeyIjjZliIBjV6yPTis1Hd5UMFsjzTpv9l+LZ
	LZdFnocTYOoESZBLNx/hxnOjRgc+OHKDyRBgH7RQH/Gr/rs5VLjTHqFY6DJ256GS+B9g
	gE2g==
X-Gm-Message-State: ALQs6tCAM6yhl4CrjtXMxr90O6yaEY9/Y5cqwVl8f+EP0oA+8RBPV8DS
	Xt/3aof4J0W+tauBNCB++IZUc3glJe/P1s9j6Ma8DHoS
X-Google-Smtp-Source: AIpwx49WxLb41psIFd+hxjdSHeL5wzalJWBTVSPc7jfF0KrbCUG1cYF468ji8wjdYz8gRiMf19UeKPFwE5X2Owe1v/k=
X-Received: by 2002:a24:78cc:: with SMTP id
	p195-v6mr493624itc.45.1523959612492; 
	Tue, 17 Apr 2018 03:06:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:6664:0:0:0:0:0 with HTTP; Tue, 17 Apr 2018 03:06:51
	-0700 (PDT)
In-Reply-To: <42b9a571-d0fd-d970-729f-39d6cac69358@numalliance.com>
References: <f082fcef-b5c2-203d-849a-cd39bd349a79@numalliance.com>
	<CAALXFYxkizrNiHLUsOUUz88Fgk+v039B+RYivtPhn84ydZd17A@mail.gmail.com>
	<42b9a571-d0fd-d970-729f-39d6cac69358@numalliance.com>
From: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Date: Tue, 17 Apr 2018 12:06:51 +0200
Message-ID: <CAALXFYzX4sXh3RGZ0zwq0R_J+03hQ=vDGmVVG5dYtU3eDWNeCw@mail.gmail.com>
To: =?UTF-8?Q?St=C3=A9phane_Ancelot?= <sancelot@numalliance.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: compiling core-image-sato failure on 32 bits system
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
X-List-Received-Date: Tue, 17 Apr 2018 10:06:55 -0000
Content-Type: multipart/alternative; boundary="0000000000005ae875056a087f20"

--0000000000005ae875056a087f20
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

If dmesg message shows no crashes your problem seems not related with the
CPU of your host (build) machine. You should investigate further about that
"Segmentation Fault" ERROR message. What gcc version is installed in your
host machine? Also, check
/home/yocto/poky/build/tmp/work/i586-poky-linux/linux-libc-headers/4.12-r0/=
temp/log.do_install.4172
contents to gather more useful information to discover/fix your issue.


2018-04-17 11:50 GMT+02:00 St=C3=A9phane Ancelot <sancelot@numalliance.com>=
:

>
>
> Le 17/04/2018 =C3=A0 09:08, Iv=C3=A1n Castell a =C3=A9crit :
>
> Review "dmesg" output to see if there is some kernel crash in your host
> machine. Which CPU are you using to compile yocto (your host machine)? We
> also have been dealing with this kind of issues compiling with an AMD
> Ryzen 7 1700 Eight-Core Processor and (in our case) it seems is a bug
> related with the CPU.
>
> This is a core i5, but the installed system runs a 32bit ubuntu system.
> There is no crash message in dmesg, I have setted up a swapfile in the
> system
>
> 2018-04-17 8:51 GMT+02:00 St=C3=A9phane Ancelot <sancelot@numalliance.com=
>:
>
> *Hi,*
>>
>> * On my ubuntu bionic system 32 bits, compilation core-image-sato fails
>> as follow; *
>>
>> * unfortunately nothing seems interesting in log.do_install. *
>>
>> * what can I do ? *
>>
>> Regards,
>>
>> Steph
>>
>>
>>
>> * Build Configuration: BB_VERSION        =3D "1.36.0" BUILD_SYS         =
=3D
>> "i686-linux" NATIVELSBSTRING   =3D "universal" TARGET_SYS        =3D
>> "i586-poky-linux" MACHINE           =3D "qemux86" DISTRO            =3D =
"poky"
>> DISTRO_VERSION    =3D "2.4.2" TUNE_FEATURES     =3D "m32 i586" TARGET_FP=
U
>>        =3D "" meta             meta-poky        meta-yocto-bsp    =3D
>> "rocko:fdeecc901196bbccd7c5b1ea4268a2cf56764a62" Initialising tasks: 100=
%
>> |#######################################################################=
###########################################################################=
##########|
>> Time: 0:00:30 NOTE: Executing SetScene Tasks
>>
>> NOTE: Executing RunQueue Tasks
>>
>> ERROR: linux-libc-headers-4.12-r0 do_install: oe_runmake failed ERROR:
>> linux-libc-headers-4.12-r0 do_install: Function failed: do_install (log
>> file is located at
>> /home/yocto/poky/build/tmp/work/i586-poky-linux/linux-libc-headers/4.12-=
r0/temp/log.do_install.4172)
>> ERROR: Logfile of failure stored in:
>> /home/yocto/poky/build/tmp/work/i586-poky-linux/linux-libc-headers/4.12-=
r0/temp/log.do_install.4172
>> Log data follows: | DEBUG: Executing python function extend_recipe_sysro=
ot
>> | NOTE: Direct dependencies are
>> ['virtual:native:/home/yocto/poky/meta/recipes-devtools/pkgconfig/pkgcon=
fig_git.bb:do_populate_sysroot',
>> 'virtual:native:/home/yocto/poky/meta/recipes-devtools/unifdef/unifdef_2=
.11.bb:do_populate_sysroot',
>> 'virtual:native:/home/yocto/poky/meta/recipes-devtools/pseudo/pseudo_1.8=
.2.bb:do_populate_sysroot',
>> '/home/yocto/poky/meta/recipes-devtools/quilt/quilt-native_0.65.bb:do_po=
pulate_sysroot',
>> 'virtual:native:/home/yocto/poky/meta/recipes-extended/xz/xz_5.2.3.bb:do=
_populate_sysroot']
>> | NOTE: Installed into sysroot: [] | NOTE: Skipping as already exists in
>> sysroot: ['pkgconfig-native', 'unifdef-native', 'pseudo-native',
>> 'quilt-native', 'xz-native', 'gnu-config-native', 'autoconf-native',
>> 'automake-native', 'libtool-native', 'gettext-minimal-native', 'm4-nativ=
e',
>> 'texinfo-dummy-native'] | DEBUG: Python function extend_recipe_sysroot
>> finished | DEBUG: Executing shell function do_install | NOTE: make -j 4
>> HOSTCC=3Dgcc  HOSTCPP=3Dgcc -E headers_install
>> INSTALL_HDR_PATH=3D/home/yocto/poky/build/tmp/work/i586-poky-linux/linux=
-libc-headers/4.12-r0/image/usr
>> | Segmentation fault | ERROR: oe_runmake failed | WARNING: exit code 1 f=
rom
>> a shell command. | ERROR: Function failed: do_install (log file is locat=
ed
>> at
>> /home/yocto/poky/build/tmp/work/i586-poky-linux/linux-libc-headers/4.12-=
r0/temp/log.do_install.4172)
>> ERROR: Task
>> (/home/yocto/poky/meta/recipes-kernel/linux-libc-headers/linux-libc-head=
ers_4.12.bb:do_install)
>> failed with exit code '1' NOTE: Tasks Summary: Attempted 191 tasks of wh=
ich
>> 185 didn't need to be rerun and 1 failed. Summary: 1 task failed:
>>  /home/yocto/poky/meta/recipes-kernel/linux-libc-headers/linux-libc-head=
ers_4.12.bb:do_install
>> Summary: There was 1 WARNING message shown. *
>>
>>
>>
>
>

--0000000000005ae875056a087f20
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">If dmesg message shows no crashes your problem seems not r=
elated with the CPU of your host (build) machine. You should investigate fu=
rther about that &quot;Segmentation Fault&quot;=C2=A0ERROR message. What gc=
c version is installed in your host machine? Also, check /home/yocto/poky/b=
uild/tmp/work/i586-poky-linux/linux-libc-headers/4.12-r0/temp/log.do_instal=
l.4172 contents to gather more useful information to discover/fix your issu=
e.<div><br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
2018-04-17 11:50 GMT+02:00 St=C3=A9phane Ancelot <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:sancelot@numalliance.com" target=3D"_blank">sancelot@numallia=
nce.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF"><span class=3D"">
    <p><br>
    </p>
    <br>
    <div class=3D"m_1903241208638611641moz-cite-prefix">Le 17/04/2018 =C3=
=A0 09:08, Iv=C3=A1n Castell a
      =C3=A9crit=C2=A0:<br>
    </div>
    </span><span class=3D""><blockquote type=3D"cite">
      <div dir=3D"ltr">Review &quot;dmesg&quot; output to see if there is s=
ome
        kernel crash in your host machine. <span style=3D"color:rgb(34,34,3=
4);font-family:arial,sans-serif;font-size:small;font-style:normal;font-vari=
ant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacin=
g:normal;text-align:start;text-indent:0px;text-transform:none;white-space:n=
ormal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-st=
yle:initial;text-decoration-color:initial;float:none;display:inline">Which
          CPU are you using to compile yocto (your host machine)?<span>=C2=
=A0</span></span>We
        also have been dealing with this kind of issues compiling with
        an<span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;f=
ont-size:12.8px;font-style:normal;font-variant-ligatures:normal;font-varian=
t-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-i=
ndent:0px;text-transform:none;white-space:normal;word-spacing:0px;backgroun=
d-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-colo=
r:initial;float:none;display:inline"><span>=C2=A0</span>AMD
          Ryzen 7 1700 Eight-Core Processor and (in our case) it seems
          is a bug related with the CPU.</span>
        <div class=3D"gmail_extra"><br>
        </div>
      </div>
    </blockquote></span><span class=3D"">
    This is a core i5, but the installed system runs a 32bit ubuntu
    system.<br>
    There is no crash message in dmesg, I have setted up a swapfile in
    the system
    </span><blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div class=3D"gmail_extra">
          <div class=3D"gmail_quote">2018-04-17 8:51 GMT+02:00 St=C3=A9phan=
e
            Ancelot <span dir=3D"ltr">&lt;<a href=3D"mailto:sancelot@numall=
iance.com" target=3D"_blank">sancelot@numalliance.com</a>&gt;</span>:<div><=
div class=3D"h5"><br>
            <blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex">
              <div text=3D"#000000" bgcolor=3D"#FFFFFF">
                <p><b style=3D"font-weight:normal" id=3D"m_1903241208638611=
641m_-5163126202105580427docs-internal-guid-f17990ec-d25b-cb5d-aa94-8f979de=
11a1c">
                  </b></p>
                <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;mar=
gin-bottom:0pt"><b style=3D"font-weight:normal" id=3D"m_1903241208638611641=
m_-5163126202105580427docs-internal-guid-f17990ec-d25b-cb5d-aa94-8f979de11a=
1c"><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgroun=
d-color:transparent;font-weight:400;font-style:normal;font-variant:normal;t=
ext-decoration:none;vertical-align:baseline;white-space:pre-wrap;white-spac=
e:pre-wrap">Hi,</span></b></p>
                <b style=3D"font-weight:normal" id=3D"m_1903241208638611641=
m_-5163126202105580427docs-internal-guid-f17990ec-d25b-cb5d-aa94-8f979de11a=
1c">
                  <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:#00=
0000;background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap;white-space:pre-wrap">
</span></p>
                </b><b style=3D"font-weight:normal" id=3D"m_190324120863861=
1641m_-5163126202105580427docs-internal-guid-f17990ec-d25b-cb5d-aa94-8f979d=
e11a1c">
                  <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:#00=
0000;background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap;white-space:pre-wrap">On my ubuntu bionic system 32 bits, compilation c=
ore-image-sato fails as follow;</span></p>
                </b><b style=3D"font-weight:normal" id=3D"m_190324120863861=
1641m_-5163126202105580427docs-internal-guid-f17990ec-d25b-cb5d-aa94-8f979d=
e11a1c">
                  <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:#00=
0000;background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap;white-space:pre-wrap">unfortunately nothing seems interesting in log<b>=
.</b>do_install.</span></p>
                </b><b style=3D"font-weight:normal" id=3D"m_190324120863861=
1641m_-5163126202105580427docs-internal-guid-f17990ec-d25b-cb5d-aa94-8f979d=
e11a1c">
                  <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:#00=
0000;background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap;white-space:pre-wrap">
</span></p>
                  <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:#00=
0000;background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap;white-space:pre-wrap">what can I do ?</span></p>
                  <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:#00=
0000;background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap;white-space:pre-wrap">
</span></p>
                </b><span style=3D"font-weight:normal">
                  <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:#00=
0000;background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap;white-space:pre-wrap">Regards,</span></p>
                  <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:#00=
0000;background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap;white-space:pre-wrap">Steph</span></p>
                </span><b style=3D"font-weight:normal" id=3D"m_190324120863=
8611641m_-5163126202105580427docs-internal-guid-f17990ec-d25b-cb5d-aa94-8f9=
79de11a1c">
                  <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:#00=
0000;background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap;white-space:pre-wrap">
</span></p>
                  <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:#00=
0000;background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap;white-space:pre-wrap">
</span></p>
                  <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:#00=
0000;background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap;white-space:pre-wrap">Build Configuration:</span></p>
                  <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:#00=
0000;background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap;white-space:pre-wrap">BB_VERSION =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0</=
span><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgrou=
nd-color:transparent;font-weight:400;font-style:normal;font-variant:normal;=
text-decoration:none;vertical-align:baseline;white-space:pre-wrap;white-spa=
ce:pre-wrap"><span class=3D"m_1903241208638611641m_-5163126202105580427Appl=
e-tab-span" style=3D"white-space:pre-wrap">	</span></span><span style=3D"fo=
nt-size:11pt;font-family:Arial;color:#000000;background-color:transparent;f=
ont-weight:400;font-style:normal;font-variant:normal;text-decoration:none;v=
ertical-align:baseline;white-space:pre-wrap;white-space:pre-wrap">=3D &quot=
;1.36.0&quot;</span></p>
                  <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:#00=
0000;background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap;white-space:pre-wrap">BUILD_SYS =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0</span><span style=3D"font-size:11pt;font-family:Arial;color:#000000;bac=
kground-color:transparent;font-weight:400;font-style:normal;font-variant:no=
rmal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;whit=
e-space:pre-wrap"><span class=3D"m_1903241208638611641m_-516312620210558042=
7Apple-tab-span" style=3D"white-space:pre-wrap">	</span></span><span style=
=3D"font-size:11pt;font-family:Arial;color:#000000;background-color:transpa=
rent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:=
none;vertical-align:baseline;white-space:pre-wrap;white-space:pre-wrap">=3D=
 &quot;i686-linux&quot;</span></p>
                  <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:#00=
0000;background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap;white-space:pre-wrap">NATIVELSBSTRING =C2=A0</span><span style=3D"font-=
size:11pt;font-family:Arial;color:#000000;background-color:transparent;font=
-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vert=
ical-align:baseline;white-space:pre-wrap;white-space:pre-wrap"><span class=
=3D"m_1903241208638611641m_-5163126202105580427Apple-tab-span" style=3D"whi=
te-space:pre-wrap">	</span></span><span style=3D"font-size:11pt;font-family=
:Arial;color:#000000;background-color:transparent;font-weight:400;font-styl=
e:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;w=
hite-space:pre-wrap;white-space:pre-wrap">=3D &quot;universal&quot;</span><=
/p>
                  <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:#00=
0000;background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap;white-space:pre-wrap">TARGET_SYS =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0</=
span><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgrou=
nd-color:transparent;font-weight:400;font-style:normal;font-variant:normal;=
text-decoration:none;vertical-align:baseline;white-space:pre-wrap;white-spa=
ce:pre-wrap"><span class=3D"m_1903241208638611641m_-5163126202105580427Appl=
e-tab-span" style=3D"white-space:pre-wrap">	</span></span><span style=3D"fo=
nt-size:11pt;font-family:Arial;color:#000000;background-color:transparent;f=
ont-weight:400;font-style:normal;font-variant:normal;text-decoration:none;v=
ertical-align:baseline;white-space:pre-wrap;white-space:pre-wrap">=3D &quot=
;i586-poky-linux&quot;</span></p>
                  <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:#00=
0000;background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap;white-space:pre-wrap">MACHINE =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0</span><span style=3D"font-size:11pt;font-family:Arial;color=
:#000000;background-color:transparent;font-weight:400;font-style:normal;fon=
t-variant:normal;text-decoration:none;vertical-align:baseline;white-space:p=
re-wrap;white-space:pre-wrap"><span class=3D"m_1903241208638611641m_-516312=
6202105580427Apple-tab-span" style=3D"white-space:pre-wrap">	</span></span>=
<span style=3D"font-size:11pt;font-family:Arial;color:#000000;background-co=
lor:transparent;font-weight:400;font-style:normal;font-variant:normal;text-=
decoration:none;vertical-align:baseline;white-space:pre-wrap;white-space:pr=
e-wrap">=3D &quot;qemux86&quot;</span></p>
                  <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:#00=
0000;background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap;white-space:pre-wrap">DISTRO =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0</span><span style=3D"font-size:11pt;font-family:Arial;co=
lor:#000000;background-color:transparent;font-weight:400;font-style:normal;=
font-variant:normal;text-decoration:none;vertical-align:baseline;white-spac=
e:pre-wrap;white-space:pre-wrap"><span class=3D"m_1903241208638611641m_-516=
3126202105580427Apple-tab-span" style=3D"white-space:pre-wrap">	</span></sp=
an><span style=3D"font-size:11pt;font-family:Arial;color:#000000;background=
-color:transparent;font-weight:400;font-style:normal;font-variant:normal;te=
xt-decoration:none;vertical-align:baseline;white-space:pre-wrap;white-space=
:pre-wrap">=3D &quot;poky&quot;</span></p>
                  <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:#00=
0000;background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap;white-space:pre-wrap">DISTRO_VERSION =C2=A0=C2=A0</span><span style=3D"=
font-size:11pt;font-family:Arial;color:#000000;background-color:transparent=
;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none=
;vertical-align:baseline;white-space:pre-wrap;white-space:pre-wrap"><span c=
lass=3D"m_1903241208638611641m_-5163126202105580427Apple-tab-span" style=3D=
"white-space:pre-wrap">	</span></span><span style=3D"font-size:11pt;font-fa=
mily:Arial;color:#000000;background-color:transparent;font-weight:400;font-=
style:normal;font-variant:normal;text-decoration:none;vertical-align:baseli=
ne;white-space:pre-wrap;white-space:pre-wrap">=3D &quot;2.4.2&quot;</span><=
/p>
                  <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:#00=
0000;background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap;white-space:pre-wrap">TUNE_FEATURES =C2=A0=C2=A0=C2=A0</span><span styl=
e=3D"font-size:11pt;font-family:Arial;color:#000000;background-color:transp=
arent;font-weight:400;font-style:normal;font-variant:normal;text-decoration=
:none;vertical-align:baseline;white-space:pre-wrap;white-space:pre-wrap"><s=
pan class=3D"m_1903241208638611641m_-5163126202105580427Apple-tab-span" sty=
le=3D"white-space:pre-wrap">	</span></span><span style=3D"font-size:11pt;fo=
nt-family:Arial;color:#000000;background-color:transparent;font-weight:400;=
font-style:normal;font-variant:normal;text-decoration:none;vertical-align:b=
aseline;white-space:pre-wrap;white-space:pre-wrap">=3D &quot;m32 i586&quot;=
</span></p>
                  <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:#00=
0000;background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap;white-space:pre-wrap">TARGET_FPU =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0</=
span><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgrou=
nd-color:transparent;font-weight:400;font-style:normal;font-variant:normal;=
text-decoration:none;vertical-align:baseline;white-space:pre-wrap;white-spa=
ce:pre-wrap"><span class=3D"m_1903241208638611641m_-5163126202105580427Appl=
e-tab-span" style=3D"white-space:pre-wrap">	</span></span><span style=3D"fo=
nt-size:11pt;font-family:Arial;color:#000000;background-color:transparent;f=
ont-weight:400;font-style:normal;font-variant:normal;text-decoration:none;v=
ertical-align:baseline;white-space:pre-wrap;white-space:pre-wrap">=3D &quot=
;&quot;</span></p>
                  <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:#00=
0000;background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap;white-space:pre-wrap">meta =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0</span><span style=3D"font-size:11pt;font-family:Ar=
ial;color:#000000;background-color:transparent;font-weight:400;font-style:n=
ormal;font-variant:normal;text-decoration:none;vertical-align:baseline;whit=
e-space:pre-wrap;white-space:pre-wrap"><span class=3D"m_1903241208638611641=
m_-5163126202105580427Apple-tab-span" style=3D"white-space:pre-wrap">	</spa=
n></span><span style=3D"font-size:11pt;font-family:Arial;color:#000000;back=
ground-color:transparent;font-weight:400;font-style:normal;font-variant:nor=
mal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;white=
-space:pre-wrap"> </span></p>
                  <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:#00=
0000;background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap;white-space:pre-wrap">meta-poky =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0</s=
pan><span style=3D"font-size:11pt;font-family:Arial;color:#000000;backgroun=
d-color:transparent;font-weight:400;font-style:normal;font-variant:normal;t=
ext-decoration:none;vertical-align:baseline;white-space:pre-wrap;white-spac=
e:pre-wrap"><span class=3D"m_1903241208638611641m_-5163126202105580427Apple=
-tab-span" style=3D"white-space:pre-wrap">	</span></span><span style=3D"fon=
t-size:11pt;font-family:Arial;color:#000000;background-color:transparent;fo=
nt-weight:400;font-style:normal;font-variant:normal;text-decoration:none;ve=
rtical-align:baseline;white-space:pre-wrap;white-space:pre-wrap"> </span></=
p>
                  <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:#00=
0000;background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap;white-space:pre-wrap">meta-yocto-bsp =C2=A0=C2=A0</span><span style=3D"=
font-size:11pt;font-family:Arial;color:#000000;background-color:transparent=
;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none=
;vertical-align:baseline;white-space:pre-wrap;white-space:pre-wrap"><span c=
lass=3D"m_1903241208638611641m_-5163126202105580427Apple-tab-span" style=3D=
"white-space:pre-wrap">	</span></span><span style=3D"font-size:11pt;font-fa=
mily:Arial;color:#000000;background-color:transparent;font-weight:400;font-=
style:normal;font-variant:normal;text-decoration:none;vertical-align:baseli=
ne;white-space:pre-wrap;white-space:pre-wrap">=3D &quot;rocko:fdeecc901196b=
bccd7c5b1e<wbr>a4268a2cf56764a62&quot;</span></p>
                  <br>
                  <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:#00=
0000;background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap;white-space:pre-wrap">Initialising tasks: 100% |#######################=
######<wbr>##############################<wbr>#############################=
#<wbr>##############################<wbr>##############################<wbr=
>#######| Time: 0:00:30</span></p>
                  <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:#00=
0000;background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap;white-space:pre-wrap">NOTE: Executing SetScene Tasks =C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0</span><span style=3D"font-size:11pt;font-family:Arial;color:#000000;bac=
kground-color:transparent;font-weight:400;font-style:normal;font-variant:no=
rmal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;whit=
e-space:pre-wrap"><span class=3D"m_1903241208638611641m_-516312620210558042=
7Apple-tab-span" style=3D"white-space:pre-wrap">	</span></span><span style=
=3D"font-size:11pt;font-family:Arial;color:#000000;background-color:transpa=
rent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:=
none;vertical-align:baseline;white-space:pre-wrap;white-space:pre-wrap"> </=
span></p>
                  <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:#00=
0000;background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap;white-space:pre-wrap">NOTE: Executing RunQueue Tasks =C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0</span><span style=3D"font-size:11pt;font-family:Arial;color:#000000;bac=
kground-color:transparent;font-weight:400;font-style:normal;font-variant:no=
rmal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;whit=
e-space:pre-wrap"><span class=3D"m_1903241208638611641m_-516312620210558042=
7Apple-tab-span" style=3D"white-space:pre-wrap">	</span></span><span style=
=3D"font-size:11pt;font-family:Arial;color:#000000;background-color:transpa=
rent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:=
none;vertical-align:baseline;white-space:pre-wrap;white-space:pre-wrap"> </=
span></p>
                  <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:#00=
0000;background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap;white-space:pre-wrap">ERROR: linux-libc-headers-4.12-r0 do_install: oe_=
runmake failed</span></p>
                  <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:#00=
0000;background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap;white-space:pre-wrap">ERROR: linux-libc-headers-4.12-r0 do_install: Fun=
ction failed: do_install (log file is located at /home/yocto/poky/build/tmp=
/wor<wbr>k/i586-poky-linux/linux-libc-<wbr>headers/4.12-r0/temp/log.do_<wbr=
>install.4172)</span></p>
                  <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:#00=
0000;background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap;white-space:pre-wrap">ERROR: Logfile of failure stored in: /home/yocto/=
poky/build/tmp/wor<wbr>k/i586-poky-linux/linux-libc-<wbr>headers/4.12-r0/te=
mp/log.do_<wbr>install.4172</span></p>
                  <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:#00=
0000;background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap;white-space:pre-wrap">Log data follows:</span></p>
                  <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:#00=
0000;background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap;white-space:pre-wrap">| DEBUG: Executing python function extend_recipe_=
sysroot</span></p>
                  <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:#00=
0000;background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap;white-space:pre-wrap">| NOTE: Direct dependencies are [&#39;virtual:nat=
ive:/home/yocto/p<wbr>oky/meta/recipes-devtools/pkgc<wbr>onfig/pkgconfig_gi=
t.bb:do_popu<wbr>late_sysroot&#39;, &#39;virtual:native:/home/yocto/po<wbr>=
ky/meta/recipes-devtools/unifd<wbr>ef/unifdef_2.11.bb:do_populate<wbr>_sysr=
oot&#39;, &#39;virtual:native:/home/yocto/po<wbr>ky/meta/recipes-devtools/p=
seud<wbr>o/pseudo_1.8.2.bb:do_populate_<wbr>sysroot&#39;, &#39;/home/yocto/=
poky/meta/recipes<wbr>-devtools/quilt/quilt-native_<wbr>0.65.bb:do_populate=
_sysroot&#39;, &#39;virtual:native:/home/yocto/po<wbr>ky/meta/recipes-exten=
ded/xz/xz<wbr>_5.2.3.bb:do_populate_sysroot&#39;<wbr>]</span></p>
                  <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:#00=
0000;background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap;white-space:pre-wrap">| NOTE: Installed into sysroot: []</span></p>
                  <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:#00=
0000;background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap;white-space:pre-wrap">| NOTE: Skipping as already exists in sysroot: [&=
#39;pkgconfig-native&#39;, &#39;unifdef-native&#39;, &#39;pseudo-native&#39=
;, &#39;quilt-native&#39;, &#39;xz-native&#39;, &#39;gnu-config-native&#39;=
, &#39;autoconf-native&#39;, &#39;automake-native&#39;, &#39;libtool-native=
&#39;, &#39;gettext-minimal-native&#39;, &#39;m4-native&#39;, &#39;texinfo-=
dummy-native&#39;]</span></p>
                  <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:#00=
0000;background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap;white-space:pre-wrap">| DEBUG: Python function extend_recipe_sysroot fi=
nished</span></p>
                  <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:#00=
0000;background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap;white-space:pre-wrap">| DEBUG: Executing shell function do_install</spa=
n></p>
                  <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:#00=
0000;background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap;white-space:pre-wrap">| NOTE: make -j 4 HOSTCC=3Dgcc =C2=A0HOSTCPP=3Dgc=
c  -E headers_install INSTALL_HDR_PATH=3D/home/yocto/p<wbr>oky/build/tmp/wo=
rk/i586-poky-l<wbr>inux/linux-libc-headers/4.12-r<wbr>0/image/usr</span></p=
>
                  <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:#00=
0000;background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap;white-space:pre-wrap">| Segmentation fault</span></p>
                  <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:#00=
0000;background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap;white-space:pre-wrap">| ERROR: oe_runmake failed</span></p>
                  <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:#00=
0000;background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap;white-space:pre-wrap">| WARNING: exit code 1 from a shell command.</spa=
n></p>
                  <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:#00=
0000;background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap;white-space:pre-wrap">| ERROR: Function failed: do_install (log file is=
 located at /home/yocto/poky/build/tmp/wor<wbr>k/i586-poky-linux/linux-libc=
-<wbr>headers/4.12-r0/temp/log.do_<wbr>install.4172)</span></p>
                  <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:#00=
0000;background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap;white-space:pre-wrap">ERROR: Task (/home/yocto/poky/meta/recipes<wbr>-k=
ernel/linux-libc-headers/<wbr>linux-libc-headers_4.12.bb:do_<wbr>install) f=
ailed with exit code &#39;1&#39;</span></p>
                  <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:#00=
0000;background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap;white-space:pre-wrap">NOTE: Tasks Summary: Attempted 191 tasks of which=
 185 didn&#39;t need to be rerun and 1 failed.</span></p>
                  <br>
                  <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:#00=
0000;background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap;white-space:pre-wrap">Summary: 1 task failed:</span></p>
                  <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:#00=
0000;background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap;white-space:pre-wrap"> =C2=A0/home/yocto/poky/meta/recipes<wbr>-kernel/=
linux-libc-headers/<wbr>linux-libc-headers_4.12.bb:do_<wbr>install</span></=
p>
                  <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:#00=
0000;background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap;white-space:pre-wrap">Summary: There was 1 WARNING message shown.</span=
></p>
                </b> <br>
                <p><br>
                </p>
              </div>
            </blockquote>
          </div></div></div>
          <div class=3D"m_1903241208638611641gmail_signature" data-smartmai=
l=3D"gmail_signature"><br>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div><br><br clear=3D"all"><div><br></div>
</div></div>

--0000000000005ae875056a087f20--
