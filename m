Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 903EDE00DCF; Tue, 22 Sep 2015 09:34:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-yk0-f182.google.com (mail-yk0-f182.google.com
	[209.85.160.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD960E0073C
	for <yocto@yoctoproject.org>; Tue, 22 Sep 2015 09:34:38 -0700 (PDT)
Received: by ykdz138 with SMTP id z138so14895105ykd.2
	for <yocto@yoctoproject.org>; Tue, 22 Sep 2015 09:34:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=5Jvh3hHloFR/wUiZJAPG9IiAPd3XCyEW1AE79QZzYvs=;
	b=HpJMANHCajZ/95X6xM9vNrKHXFZnilJ810V3dR4WSrtRF64g/NC+SBTutswenpJa0W
	n9uoHwkjCCdITvnLuBHCEkY7fftOeMOsPYqZoT4QJsuGkssiGw193Y9kNgBcL68lkvd5
	Fbotlek8ncxOF5HlTubKnn99auqWdgeVj1MqR+JKi3UYH+siPHBEEXJnCrrS4gyovcUg
	JC+Vrrbiv3HCnVVNP7QaubsuBgPCmWFfnq1M6gKxSPuTvB8h5r5M0XPmOZrh5ZWFFSob
	pU8NWFjPeWB57dNE6KumSb1dBMb/CVpEpnz0//XCkP56h5eyNxr3fU64nLXAdUwYX3qg
	3wIQ==
MIME-Version: 1.0
X-Received: by 10.170.69.66 with SMTP id l63mr22250767ykl.89.1442939677699;
	Tue, 22 Sep 2015 09:34:37 -0700 (PDT)
Received: by 10.129.148.199 with HTTP; Tue, 22 Sep 2015 09:34:37 -0700 (PDT)
In-Reply-To: <CAKjpqyK+ZXuE+4jzDfTFO=TLeecGyrL4ab91-eGrLGHJzJADUA@mail.gmail.com>
References: <CAKjpqyJDgoV=+4QqtJ5Q5p2WcdqkioFDR5LMNicc+h42seEbpA@mail.gmail.com>
	<CAF3SDA7_M70fr29QWLdtN4jxGWiQozH=nVjAk9tYNroM11c0gw@mail.gmail.com>
	<CAKjpqyLFgtTmW=VOWXuo7MD-2BGV2q9xH65YaC7NeXhMCqeqtg@mail.gmail.com>
	<CAF3SDA6Go=zg0ABE6BH7MspciH7Wt-aSrwfwwA_3isyAyOxkrQ@mail.gmail.com>
	<CAKjpqyLs5AgWkxY2zf_zQ-oWk-j7pqPj6QZRkCFO470rYEa9yQ@mail.gmail.com>
	<CAF3SDA4vTLr0M23=W2ySF1BiU0OoOoJTmsMaD6QkPVtTeC=CMA@mail.gmail.com>
	<CAF3SDA7=pRJ-LsBmgrDA0je+ZUTH=bbEycoJU8uMi7Sh6YbLoA@mail.gmail.com>
	<CAKjpqyK+ZXuE+4jzDfTFO=TLeecGyrL4ab91-eGrLGHJzJADUA@mail.gmail.com>
Date: Tue, 22 Sep 2015 13:34:37 -0300
Message-ID: <CAF3SDA7qmGS=3aULfJtejs1NS-wREQV-Y5ZD1rM7_Ctj1Qdimw@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: Mayank Agarwal <mayank77fromindia@gmail.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: error in do_rootfs
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
X-List-Received-Date: Tue, 22 Sep 2015 16:34:40 -0000
Content-Type: multipart/alternative; boundary=001a113998baebf5280520589257

--001a113998baebf5280520589257
Content-Type: text/plain; charset=UTF-8

Seg fault? Thats really weird,

Please specify your target system, host system, yocto release. This stuff
shoudn't segfault at all, something would be really messy on your build
environment.

Did you tried this: https://github.com/dv1/meta-gstreamer1.0 ?

It seems to be what you're looking for :)

Cheers,
- dhs

2015-09-22 12:35 GMT-03:00 Mayank Agarwal <mayank77fromindia@gmail.com>:

> Hi,
>
> To give you more detail,I am trying to add gstreamer-1.0 support in
> framework which is already having gstreamer-0.10.
> Now gstreamer binaries are built in Intel 80386 32 bit format,while my
> machine is amd,64 bit.So what i am doing i am configuring
> and compiling the gstreamer plugin packages on ubuntu and copy the whole
> source from there,after that i am doing do_install
> in my recipe.In my recipe i have set noexec=1 for
> do_fetch,do_configure,do_compile.It is able to install binaries in
> image/usr/lib and sysroot folder according to what i write in do_install
> but in installing the binaries to final image it is giving these errors:
>
> i hope what i am doing above is right.
> on doing bitbake -u depexp -g bash i am seg fault: error
>
> Regards
> Mayank
>
>
>
>
>
>
>
> On Tue, Sep 22, 2015 at 8:37 PM, Daniel. <danielhilst@gmail.com> wrote:
>
>> This will depend on what is selecting it to your image...
>>
>> Taking a look on bash dependecies here (I'm in Daisy) it has nothing that
>> depend on bash. So, the right question is, "Why bitbake is trying to
>> install it?". I suggest you to run `bitbake -u depexp -g bash' and see at
>> "Reverse Depends" if there is something selecting bash. Also take a look at
>> DISTRO_FEATURES and IMAGE_FEATURES, did you mess with them?
>>
>> Cheers,
>>
>>
>> 2015-09-22 12:04 GMT-03:00 Daniel. <danielhilst@gmail.com>:
>>
>>> This will depend on what is selecting it to your image...
>>>
>>> Taking a look on bash dependecies here (I'm in Daisy) it has nothing
>>> that depend on bash. So, the right question is, "Why bitbake is trying to
>>> install it?". I suggest you to run `bitbake -u depexp -g bash' and see at
>>> "Reverse
>>>
>>> 2015-09-22 11:53 GMT-03:00 Mayank Agarwal <mayank77fromindia@gmail.com>:
>>>
>>>> Thanks Daniel for your help.Please specify how can i remove it
>>>>
>>>> Regards
>>>> Mayank
>>>>
>>>> On Tue, Sep 22, 2015 at 8:21 PM, Daniel. <danielhilst@gmail.com> wrote:
>>>>
>>>>> Will you use bash? If not, try to remove it from image, so /bin/bash
>>>>> isn't created.
>>>>>
>>>>>
>>>>> Cheers,
>>>>> - dhs
>>>>>
>>>>> 2015-09-22 11:42 GMT-03:00 Mayank Agarwal <mayank77fromindia@gmail.com
>>>>> >:
>>>>>
>>>>>> From that error:
>>>>>> Error: not linking /1.0-r0/rootfs//bin/bash to /bin/busybox.nosuid
>>>>>> since rootfs//bin/bash exists and is not a link
>>>>>>
>>>>>> Any solutions for above,even if i create symlink this error doesn't go
>>>>>>
>>>>>> Regards
>>>>>> Mayank
>>>>>>
>>>>>> On Tue, Sep 22, 2015 at 7:47 PM, Daniel. <danielhilst@gmail.com>
>>>>>> wrote:
>>>>>>
>>>>>>> There should be a log.do_rootfs in something like
>>>>>>> BUILD_DIR/tmp/work/MACHINE-TOOLCHAIN/IMAGE/PV-PR/temp/. There you will find
>>>>>>> a proper failure message with the command that triggered the failure and is
>>>>>>> output.
>>>>>>>
>>>>>>> Cheers,
>>>>>>> - dhs
>>>>>>>
>>>>>>> 2015-09-22 6:36 GMT-03:00 Mayank Agarwal <
>>>>>>> mayank77fromindia@gmail.com>:
>>>>>>>
>>>>>>>> Hi,
>>>>>>>>
>>>>>>>> I am getting the below error in do_rootfs:
>>>>>>>>
>>>>>>>> ERROR: Unable to install packages. Command
>>>>>>>>  returned 255:
>>>>>>>>
>>>>>>>>
>>>>>>>> I uderstand this error comes from certificate validation
>>>>>>>> failure.
>>>>>>>>
>>>>>>>> Is there any option i can override the certificate validation
>>>>>>>> in do_rootfs and get the binaries imstalled in final image
>>>>>>>>
>>>>>>>> Regards
>>>>>>>> Mayank
>>>>>>>>
>>>>>>>>
>>>>>>>> --
>>>>>>>> _______________________________________________
>>>>>>>> yocto mailing list
>>>>>>>> yocto@yoctoproject.org
>>>>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>>>>>
>>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>> --
>>>>>>> *"Do or do not. There is no try"*
>>>>>>>   *Yoda Master*
>>>>>>>
>>>>>>
>>>>>>
>>>>>
>>>>>
>>>>> --
>>>>> *"Do or do not. There is no try"*
>>>>>   *Yoda Master*
>>>>>
>>>>
>>>>
>>>
>>>
>>> --
>>> *"Do or do not. There is no try"*
>>>   *Yoda Master*
>>>
>>
>>
>>
>> --
>> *"Do or do not. There is no try"*
>>   *Yoda Master*
>>
>
>


-- 
*"Do or do not. There is no try"*
  *Yoda Master*

--001a113998baebf5280520589257
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Seg fault? Thats really weird, <br><br=
></div><div>Please specify your target system, host system, yocto release. =
This stuff shoudn&#39;t segfault at all, something would be really messy on=
 your build environment.<br><br></div>Did you tried this: <a href=3D"https:=
//github.com/dv1/meta-gstreamer1.0">https://github.com/dv1/meta-gstreamer1.=
0</a> ?<br><br></div>It seems to be what you&#39;re looking for :)<br><br><=
/div>Cheers,<br></div>- dhs<br></div><div class=3D"gmail_extra"><br><div cl=
ass=3D"gmail_quote">2015-09-22 12:35 GMT-03:00 Mayank Agarwal <span dir=3D"=
ltr">&lt;<a href=3D"mailto:mayank77fromindia@gmail.com" target=3D"_blank">m=
ayank77fromindia@gmail.com</a>&gt;</span>:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
"><div dir=3D"ltr">Hi,<div><br></div><div>To give you more detail,I am tryi=
ng to add gstreamer-1.0 support in framework which is already having gstrea=
mer-0.10.</div><div>Now gstreamer binaries are built in Intel 80386 32 bit =
format,while my machine is amd,64 bit.So what i am doing i am configuring</=
div><div>and compiling the gstreamer plugin packages on ubuntu and copy the=
 whole source from there,after that i am doing do_install</div><div>in my r=
ecipe.In my recipe i have set noexec=3D1 for do_fetch,do_configure,do_compi=
le.It is able to install binaries in image/usr/lib and sysroot folder accor=
ding to what i write in do_install but in installing the binaries to final =
image it is giving these errors:</div><div><br></div><div>i hope what i am =
doing above is right.</div><div>on doing=C2=A0<span style=3D"font-size:12.8=
px">bitbake -u depexp -g bash i am seg fault: error</span></div><div><span =
style=3D"font-size:12.8px"><br></span></div><div><span style=3D"font-size:1=
2.8px">Regards</span></div><span class=3D"HOEnZb"><font color=3D"#888888"><=
div><span style=3D"font-size:12.8px">Mayank</span></div><div><span style=3D=
"font-size:12.8px"><br></span></div><div><span style=3D"font-size:12.8px"><=
br></span></div><div><span style=3D"font-size:12.8px"><br></span></div><div=
><br></div><div><br></div><div><br></div></font></span></div><div class=3D"=
HOEnZb"><div class=3D"h5"><div class=3D"gmail_extra"><br><div class=3D"gmai=
l_quote">On Tue, Sep 22, 2015 at 8:37 PM, Daniel. <span dir=3D"ltr">&lt;<a =
href=3D"mailto:danielhilst@gmail.com" target=3D"_blank">danielhilst@gmail.c=
om</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"=
><div><span><div>This will depend on what is selecting it to your image... =
<br><br></div></span>Taking
 a look on bash dependecies here (I&#39;m in Daisy) it has nothing that=20
depend on bash. So, the right question is, &quot;Why bitbake is trying to=
=20
install it?&quot;. I suggest you to run `bitbake -u depexp -g bash&#39; and=
 see=20
at &quot;Reverse Depends&quot; if there is something selecting bash. Also t=
ake a look at DISTRO_FEATURES and IMAGE_FEATURES, did you mess with them? <=
br><br></div>Cheers,<br><br></div><div><div><div class=3D"gmail_extra"><br>=
<div class=3D"gmail_quote">2015-09-22 12:04 GMT-03:00 Daniel. <span dir=3D"=
ltr">&lt;<a href=3D"mailto:danielhilst@gmail.com" target=3D"_blank">danielh=
ilst@gmail.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"ltr"><div><div>This will depend on what is selecting it to your image..=
. <br><br></div>Taking a look on bash dependecies here (I&#39;m in Daisy) i=
t has nothing that depend on bash. So, the right question is, &quot;Why bit=
bake is trying to install it?&quot;. I suggest you to run `bitbake -u depex=
p -g bash&#39; and see at &quot;Reverse<br></div></div><div><div><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">2015-09-22 11:53 GMT-03:00 =
Mayank Agarwal <span dir=3D"ltr">&lt;<a href=3D"mailto:mayank77fromindia@gm=
ail.com" target=3D"_blank">mayank77fromindia@gmail.com</a>&gt;</span>:<br><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex"><div dir=3D"ltr">Thanks Daniel for your help.=
Please specify how can i remove it<div><br></div><div>Regards</div><span><f=
ont color=3D"#888888"><div>Mayank</div></font></span></div><div><div><div c=
lass=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue, Sep 22, 2015 at=
 8:21 PM, Daniel. <span dir=3D"ltr">&lt;<a href=3D"mailto:danielhilst@gmail=
.com" target=3D"_blank">danielhilst@gmail.com</a>&gt;</span> wrote:<br><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex"><div dir=3D"ltr"><div><div>Will you use bash? If=
 not, try to remove it from image, so /bin/bash isn&#39;t created.<br><br><=
/div><div><br>Cheers,<br></div></div>- dhs<br></div><div><div><div class=3D=
"gmail_extra"><br><div class=3D"gmail_quote">2015-09-22 11:42 GMT-03:00 May=
ank Agarwal <span dir=3D"ltr">&lt;<a href=3D"mailto:mayank77fromindia@gmail=
.com" target=3D"_blank">mayank77fromindia@gmail.com</a>&gt;</span>:<br><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex"><div dir=3D"ltr">From that error:<div>Error: not=
 linking /1.0-r0/rootfs//bin/bash to /bin/busybox.nosuid since rootfs//bin/=
bash exists and is not a link<br></div><div><br></div><div>Any solutions fo=
r above,even if i create symlink this error doesn&#39;t go</div><div><br></=
div><div>Regards</div><span><font color=3D"#888888"><div>Mayank</div></font=
></span></div><div><div><div class=3D"gmail_extra"><br><div class=3D"gmail_=
quote">On Tue, Sep 22, 2015 at 7:47 PM, Daniel. <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:danielhilst@gmail.com" target=3D"_blank">danielhilst@gmail.com=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><=
div><div>There should be a log.do_rootfs in something like BUILD_DIR/tmp/wo=
rk/MACHINE-TOOLCHAIN/IMAGE/PV-PR/temp/. There you will find a proper failur=
e message with the command that triggered the failure and is output. <br><b=
r></div>Cheers,<br></div>- dhs<br></div><div class=3D"gmail_extra"><br><div=
 class=3D"gmail_quote"><div><div>2015-09-22 6:36 GMT-03:00 Mayank Agarwal <=
span dir=3D"ltr">&lt;<a href=3D"mailto:mayank77fromindia@gmail.com" target=
=3D"_blank">mayank77fromindia@gmail.com</a>&gt;</span>:<br></div></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex"><div><div><div dir=3D"ltr">Hi,<div><br></div><di=
v>I am getting the below error in do_rootfs:</div><div><br></div><div>ERROR=
: Unable to install packages. Command</div><div><div>=C2=A0returned 255:</d=
iv></div><div><br></div><div><br></div><div>I uderstand this error comes fr=
om certificate validation</div><div>failure.</div><div><br></div><div>Is th=
ere any option i can override the certificate validation</div><div>in do_ro=
otfs and get the binaries imstalled in final image</div><div><br></div><div=
>Regards</div><span><font color=3D"#888888"><div>Mayank</div><div><br></div=
></font></span></div>
<br></div></div><span><font color=3D"#888888">--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></font></span></blockquote></div><span><font color=3D"#888888"><br><br =
clear=3D"all"><br>-- <br><div><div style=3D"text-align:right"><i>&quot;Do o=
r do not. There is no try&quot;</i><br><i>=C2=A0 </i><i><b>Yoda Master</b><=
/i><br></div></div>
</font></span></div>
</blockquote></div><br></div>
</div></div></blockquote></div><br><br clear=3D"all"><br>-- <br><div><div s=
tyle=3D"text-align:right"><i>&quot;Do or do not. There is no try&quot;</i><=
br><i>=C2=A0 </i><i><b>Yoda Master</b></i><br></div></div>
</div>
</div></div></blockquote></div><br></div>
</div></div></blockquote></div><br><br clear=3D"all"><br>-- <br><div><div s=
tyle=3D"text-align:right"><i>&quot;Do or do not. There is no try&quot;</i><=
br><i>=C2=A0 </i><i><b>Yoda Master</b></i><br></div></div>
</div>
</div></div></blockquote></div><br><br clear=3D"all"><br>-- <br><div><div s=
tyle=3D"text-align:right"><i>&quot;Do or do not. There is no try&quot;</i><=
br><i>=C2=A0 </i><i><b>Yoda Master</b></i><br></div></div>
</div>
</div></div></blockquote></div><br></div>
</div></div></blockquote></div><br><br clear=3D"all"><br>-- <br><div class=
=3D"gmail_signature"><div style=3D"text-align:right"><i>&quot;Do or do not.=
 There is no try&quot;</i><br><i>=C2=A0 </i><i><b>Yoda Master</b></i><br></=
div></div>
</div>

--001a113998baebf5280520589257--
