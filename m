Return-Path: <zafrullahmehdi@gmail.com>
Received: from mail-we0-f172.google.com (mail-we0-f172.google.com
	[74.125.82.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36C6AE014FA
	for <yocto@yoctoproject.org>; Tue, 28 May 2013 05:03:40 -0700 (PDT)
Received: by mail-we0-f172.google.com with SMTP id w62so5325434wes.3
	for <yocto@yoctoproject.org>; Tue, 28 May 2013 05:03:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=I9qSiG36Z663lxq9NAlbOSl2lF1nyiGcfRNkKlJRxXU=;
	b=caUnn3vBb3DAKmcZvRcDZ9a5RtdEAewIhHaD0/I3LiAFF4nz4Eu2WYzljDy6SkAdLs
	zE2nrGY45SC4seNIW2rR5FzFPWX75UHG+gNsra1aB8zU+bpOSlqO71xhQ96MhnIScSy5
	GyII8dFyG5rbKmlyVrZDuVM8OWSINpEKp2xkVk7n9LnJekZ+gVcoymCiyWAm4AR2UnK2
	CEd4OsEidH5ptISBnjfY2hnV7l8ggiURSqpYI/vWzgm2T3liLCE/ikoRTaXe2s712R1P
	jAhxTJpnRsPE56BTTIPrPxC+AvO7b2NlZeXSH0HZnTlKeTe5Fd1dITz2iONHEOZJF2SD
	JBkA==
X-Received: by 10.180.182.229 with SMTP id eh5mr11817265wic.6.1369742619182;
	Tue, 28 May 2013 05:03:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.135.79 with HTTP; Tue, 28 May 2013 05:03:18 -0700 (PDT)
In-Reply-To: <CAFMfyzKxq626HNkNPGFW9ADeaWWDQHR7UWziJf2tZ9pXODQpgw@mail.gmail.com>
References: <CAAGt+t1SvAkQik=jAr5xPPBe7NE-VOwbDhLTnszst7NKF5W5TA@mail.gmail.com>
	<CAFMfyzKxq626HNkNPGFW9ADeaWWDQHR7UWziJf2tZ9pXODQpgw@mail.gmail.com>
From: Zafrullah Syed <zafrullahmehdi@gmail.com>
Date: Tue, 28 May 2013 14:03:18 +0200
Message-ID: <CAAGt+t1zR6yh6oNd0G0Tmoav57gQ0yhOp3Bjh9YY=uBfYah+eA@mail.gmail.com>
To: Satya Swaroop Damarla <satyaswaroop.damarla@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Hello world-Checksum error
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
X-List-Received-Date: Tue, 28 May 2013 12:03:40 -0000
Content-Type: multipart/alternative; boundary=089e0163491e400fae04ddc60e65

--089e0163491e400fae04ddc60e65
Content-Type: text/plain; charset=ISO-8859-1

I removed $ sign in SRC_URI  and ran build again, following is the same
error:

ERROR: ExpansionError during parsing
/home/siguser/yocto2013-05-08/poky/meta-bebot/recipes-bebot/hello/hello.bb:
Failure expanding expression ${@bb.fetch.get_checksum_file_list(d)} which
triggered exception NoMethodError: Could not find a fetcher which supports
the URL: '{ftp://ftp.gnu.org/gnu}/hello/hello-${2.7}.tar.gz'
ERROR: Command execution failed: Exited with 1



On Tue, May 28, 2013 at 1:57 PM, Satya Swaroop Damarla <
satyaswaroop.damarla@gmail.com> wrote:

> Hi,
>
> Please remove the $ sign in SRC_URI and retry building the package.. I
> think it is the issue
>
>
> On Tue, May 28, 2013 at 1:46 PM, Zafrullah Syed <zafrullahmehdi@gmail.com>wrote:
>
>> Hi all,
>>
>> I am trying to add Hello world recipe, everything was going good but
>> after giving bitbake <target> command it breaks with the following error:
>>
>> siguser@siguser:~/yocto2013-05-08/poky/build$ *bitbake
>> gumstix-console-image*
>>
>> ERROR: ExpansionError during parsing
>> /home/siguser/yocto2013-05-08/poky/meta-bebot/recipes-bebot/hello/
>> hello.bb: Failure expanding expression
>> ${@bb.fetch.get_checksum_file_list(d)} which triggered exception
>> NoMethodError: Could not find a fetcher which supports the URL: '${
>> ftp://ftp.gnu.org/gnu}/hello/hello-${2.7}.tar.gz'
>> ERROR: Command execution failed: Exited with 1
>>
>>
>> *My hello.bb file is*:
>>
>> DESCRIPTION = "GNU Helloworld application"
>> SECTION = "examples"
>> LICENSE = "GPLv3+"
>> LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
>> PR = "r0"
>> SRC_URI = "${ftp://ftp.gnu.org/gnu}/hello/hello-${2.7}.tar.gz"
>> inherit autotools gettext
>>
>> I downloaded hello-2.7.tar.gz -> extracted -> ran md5sum against COPYING
>> -> got md5 -> added that md5 to my hello.bb file.
>> Any ideas where I am doing wrong?
>>
>>
>> --
>> Regards,
>> Zafrullah Syed
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>


-- 
Regards,
Zafrullah Syed

--089e0163491e400fae04ddc60e65
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I removed=A0<span style=3D"font-family:arial,sans-serif;fo=
nt-size:13px">$ sign in SRC_URI=A0</span>=A0and ran build again, following =
is the same error:<div><br></div><div><div>ERROR: ExpansionError during par=
sing /home/siguser/yocto2013-05-08/poky/meta-bebot/recipes-bebot/hello/<a h=
ref=3D"http://hello.bb">hello.bb</a>: Failure expanding expression ${@bb.fe=
tch.get_checksum_file_list(d)} which triggered exception NoMethodError: Cou=
ld not find a fetcher which supports the URL: &#39;{<a href=3D"ftp://ftp.gn=
u.org/gnu}/hello/hello-${2.7}.tar.gz">ftp://ftp.gnu.org/gnu}/hello/hello-${=
2.7}.tar.gz</a>&#39;<br>

</div><div>ERROR: Command execution failed: Exited with 1</div></div><div><=
br></div></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote=
">On Tue, May 28, 2013 at 1:57 PM, Satya Swaroop Damarla <span dir=3D"ltr">=
&lt;<a href=3D"mailto:satyaswaroop.damarla@gmail.com" target=3D"_blank">sat=
yaswaroop.damarla@gmail.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi,<div><br></div><div>Plea=
se remove the $ sign in SRC_URI and retry building the package.. I think it=
 is the issue</div>

</div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote"><div><d=
iv class=3D"h5">On Tue, May 28, 2013 at 1:46 PM, Zafrullah Syed <span dir=
=3D"ltr">&lt;<a href=3D"mailto:zafrullahmehdi@gmail.com" target=3D"_blank">=
zafrullahmehdi@gmail.com</a>&gt;</span> wrote:<br>


</div></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div><div class=3D"h5"><div dir=
=3D"ltr">Hi all,<div><br></div><div>I am trying to add Hello world recipe, =
everything was going good but after giving bitbake &lt;target&gt; command i=
t breaks with the following error:</div>


<div><br clear=3D"all"><div>

<div><div>siguser@siguser:~/yocto2013-05-08/poky/build$ <b>bitbake gumstix-=
console-image</b></div></div><div><br></div><div>ERROR: ExpansionError duri=
ng parsing /home/siguser/yocto2013-05-08/poky/meta-bebot/recipes-bebot/hell=
o/<a href=3D"http://hello.bb" target=3D"_blank">hello.bb</a>: Failure expan=
ding expression ${@bb.fetch.get_checksum_file_list(d)} which triggered exce=
ption NoMethodError: Could not find a fetcher which supports the URL: &#39;=
${<a href=3D"ftp://ftp.gnu.org/gnu%7D/hello/hello-$%7B2.7%7D.tar.gz" target=
=3D"_blank">ftp://ftp.gnu.org/gnu}/hello/hello-${2.7}.tar.gz</a>&#39;</div>




<div>ERROR: Command execution failed: Exited with 1</div><div><br></div></d=
iv><div><br></div><div><b>My <a href=3D"http://hello.bb" target=3D"_blank">=
hello.bb</a> file is</b>:</div><div><br></div><div><div>DESCRIPTION =3D &qu=
ot;GNU Helloworld application&quot;=A0</div>




<div>SECTION =3D &quot;examples&quot;=A0</div><div>LICENSE =3D &quot;GPLv3+=
&quot;=A0</div><div>LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3Dd32239b=
cb673463ab874e80d47fae504&quot;=A0</div><div>PR =3D &quot;r0&quot;=A0</div>=
<div>SRC_URI =3D &quot;${<a href=3D"ftp://ftp.gnu.org/gnu%7D/hello/hello-$%=
7B2.7%7D.tar.gz" target=3D"_blank">ftp://ftp.gnu.org/gnu}/hello/hello-${2.7=
}.tar.gz</a>&quot;=A0</div>




<div>inherit autotools gettext=A0</div><div><br></div><div>I downloaded hel=
lo-2.7.tar.gz -&gt; extracted -&gt; ran md5sum against COPYING -&gt; got md=
5 -&gt; added that md5 to my <a href=3D"http://hello.bb" target=3D"_blank">=
hello.bb</a> file.</div>




<div>Any ideas where I am doing wrong?</div></div><span><font color=3D"#888=
888"><div><br></div><div><br></div>-- <br><span style=3D"font-family:arial,=
sans-serif;font-size:13px;border-collapse:collapse;color:rgb(136,136,136)">=
Regards,<br>


Zafrullah Syed</span><div>

<font color=3D"#888888" face=3D"arial, sans-serif"><span style=3D"border-co=
llapse:collapse"><br></span></font></div>
</font></span></div></div>
<br></div></div>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><span style=
=3D"font-family:arial,sans-serif;font-size:13px;border-collapse:collapse;co=
lor:rgb(136,136,136)">Regards,<br>Zafrullah Syed</span><div><font color=3D"=
#888888" face=3D"arial, sans-serif"><span style=3D"border-collapse:collapse=
"><br>

</span></font></div>
</div>

--089e0163491e400fae04ddc60e65--
