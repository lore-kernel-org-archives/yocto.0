Return-Path: <mayank77fromindia@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4EF7E00E10; Tue, 22 Sep 2015 07:53:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mayank77fromindia[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f181.google.com (mail-ob0-f181.google.com
	[209.85.214.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C160E00461
	for <yocto@yoctoproject.org>; Tue, 22 Sep 2015 07:53:38 -0700 (PDT)
Received: by obbmp4 with SMTP id mp4so9354031obb.3
	for <yocto@yoctoproject.org>; Tue, 22 Sep 2015 07:53:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=e7PPQUwB3atI2xAqfXyYbNTWUgTjhC7jhdU8aPPlG+s=;
	b=MWjK5MVLvg7B5yDcOS32zHXkereprFTvtTeVMlUn0pApZLSsa39YBBg/zd5zd9LDJN
	ufXCj8O687QHmxInTzVXW+BORob4alt3rjdOSDzyQLMZ5B63n+PrM0EGDSJaECuLVAxr
	EKih8olsm0CxGYFG5/vWXE9Ki6CEA3iXyE/lVwEOW5aGFOF1LZISdjlaP7kLyg/fyjh+
	LIJbpHDRjPpllvBaLFhVGTOoaicfhh3mL12lWfx6GhmNL1S6FtAEGJ5739r2NXy7nh1F
	iTKfhOjyDlPzyzhbPJ8nLPvDaAN5A77unKF8DrJA+ZTVHxEYtbuVEozbvMc6KADVp7Bz
	hlDA==
MIME-Version: 1.0
X-Received: by 10.60.164.73 with SMTP id yo9mr4821481oeb.33.1442933617299;
	Tue, 22 Sep 2015 07:53:37 -0700 (PDT)
Received: by 10.202.61.67 with HTTP; Tue, 22 Sep 2015 07:53:37 -0700 (PDT)
In-Reply-To: <CAF3SDA6Go=zg0ABE6BH7MspciH7Wt-aSrwfwwA_3isyAyOxkrQ@mail.gmail.com>
References: <CAKjpqyJDgoV=+4QqtJ5Q5p2WcdqkioFDR5LMNicc+h42seEbpA@mail.gmail.com>
	<CAF3SDA7_M70fr29QWLdtN4jxGWiQozH=nVjAk9tYNroM11c0gw@mail.gmail.com>
	<CAKjpqyLFgtTmW=VOWXuo7MD-2BGV2q9xH65YaC7NeXhMCqeqtg@mail.gmail.com>
	<CAF3SDA6Go=zg0ABE6BH7MspciH7Wt-aSrwfwwA_3isyAyOxkrQ@mail.gmail.com>
Date: Tue, 22 Sep 2015 20:23:37 +0530
Message-ID: <CAKjpqyLs5AgWkxY2zf_zQ-oWk-j7pqPj6QZRkCFO470rYEa9yQ@mail.gmail.com>
From: Mayank Agarwal <mayank77fromindia@gmail.com>
To: "Daniel." <danielhilst@gmail.com>, yocto@yoctoproject.org
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
X-List-Received-Date: Tue, 22 Sep 2015 14:53:39 -0000
Content-Type: multipart/alternative; boundary=047d7b450b7eb19826052057297a

--047d7b450b7eb19826052057297a
Content-Type: text/plain; charset=UTF-8

Thanks Daniel for your help.Please specify how can i remove it

Regards
Mayank

On Tue, Sep 22, 2015 at 8:21 PM, Daniel. <danielhilst@gmail.com> wrote:

> Will you use bash? If not, try to remove it from image, so /bin/bash isn't
> created.
>
>
> Cheers,
> - dhs
>
> 2015-09-22 11:42 GMT-03:00 Mayank Agarwal <mayank77fromindia@gmail.com>:
>
>> From that error:
>> Error: not linking /1.0-r0/rootfs//bin/bash to /bin/busybox.nosuid since
>> rootfs//bin/bash exists and is not a link
>>
>> Any solutions for above,even if i create symlink this error doesn't go
>>
>> Regards
>> Mayank
>>
>> On Tue, Sep 22, 2015 at 7:47 PM, Daniel. <danielhilst@gmail.com> wrote:
>>
>>> There should be a log.do_rootfs in something like
>>> BUILD_DIR/tmp/work/MACHINE-TOOLCHAIN/IMAGE/PV-PR/temp/. There you will find
>>> a proper failure message with the command that triggered the failure and is
>>> output.
>>>
>>> Cheers,
>>> - dhs
>>>
>>> 2015-09-22 6:36 GMT-03:00 Mayank Agarwal <mayank77fromindia@gmail.com>:
>>>
>>>> Hi,
>>>>
>>>> I am getting the below error in do_rootfs:
>>>>
>>>> ERROR: Unable to install packages. Command
>>>>  returned 255:
>>>>
>>>>
>>>> I uderstand this error comes from certificate validation
>>>> failure.
>>>>
>>>> Is there any option i can override the certificate validation
>>>> in do_rootfs and get the binaries imstalled in final image
>>>>
>>>> Regards
>>>> Mayank
>>>>
>>>>
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
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
>
>
> --
> *"Do or do not. There is no try"*
>   *Yoda Master*
>

--047d7b450b7eb19826052057297a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Daniel for your help.Please specify how can i remov=
e it<div><br></div><div>Regards</div><div>Mayank</div></div><div class=3D"g=
mail_extra"><br><div class=3D"gmail_quote">On Tue, Sep 22, 2015 at 8:21 PM,=
 Daniel. <span dir=3D"ltr">&lt;<a href=3D"mailto:danielhilst@gmail.com" tar=
get=3D"_blank">danielhilst@gmail.com</a>&gt;</span> wrote:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex"><div dir=3D"ltr"><div><div>Will you use bash? If not, try=
 to remove it from image, so /bin/bash isn&#39;t created.<br><br></div><div=
><br>Cheers,<br></div></div>- dhs<br></div><div class=3D"HOEnZb"><div class=
=3D"h5"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2015-09-2=
2 11:42 GMT-03:00 Mayank Agarwal <span dir=3D"ltr">&lt;<a href=3D"mailto:ma=
yank77fromindia@gmail.com" target=3D"_blank">mayank77fromindia@gmail.com</a=
>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">From that =
error:<div>Error: not linking /1.0-r0/rootfs//bin/bash to /bin/busybox.nosu=
id since rootfs//bin/bash exists and is not a link<br></div><div><br></div>=
<div>Any solutions for above,even if i create symlink this error doesn&#39;=
t go</div><div><br></div><div>Regards</div><span><font color=3D"#888888"><d=
iv>Mayank</div></font></span></div><div><div><div class=3D"gmail_extra"><br=
><div class=3D"gmail_quote">On Tue, Sep 22, 2015 at 7:47 PM, Daniel. <span =
dir=3D"ltr">&lt;<a href=3D"mailto:danielhilst@gmail.com" target=3D"_blank">=
danielhilst@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_q=
uote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1e=
x"><div dir=3D"ltr"><div><div>There should be a log.do_rootfs in something =
like BUILD_DIR/tmp/work/MACHINE-TOOLCHAIN/IMAGE/PV-PR/temp/. There you will=
 find a proper failure message with the command that triggered the failure =
and is output. <br><br></div>Cheers,<br></div>- dhs<br></div><div class=3D"=
gmail_extra"><br><div class=3D"gmail_quote"><div><div>2015-09-22 6:36 GMT-0=
3:00 Mayank Agarwal <span dir=3D"ltr">&lt;<a href=3D"mailto:mayank77fromind=
ia@gmail.com" target=3D"_blank">mayank77fromindia@gmail.com</a>&gt;</span>:=
<br></div></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex"><div><div><div dir=3D"ltr">H=
i,<div><br></div><div>I am getting the below error in do_rootfs:</div><div>=
<br></div><div>ERROR: Unable to install packages. Command</div><div><div>=
=C2=A0returned 255:</div></div><div><br></div><div><br></div><div>I udersta=
nd this error comes from certificate validation</div><div>failure.</div><di=
v><br></div><div>Is there any option i can override the certificate validat=
ion</div><div>in do_rootfs and get the binaries imstalled in final image</d=
iv><div><br></div><div>Regards</div><span><font color=3D"#888888"><div>Maya=
nk</div><div><br></div></font></span></div>
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

--047d7b450b7eb19826052057297a--
