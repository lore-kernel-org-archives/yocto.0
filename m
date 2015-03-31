Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08A88E0059F; Tue, 31 Mar 2015 15:52:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-wg0-f44.google.com (mail-wg0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 613D5E0049A
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 15:52:13 -0700 (PDT)
Received: by wgra20 with SMTP id a20so35041203wgr.3
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 15:52:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=3EGh3yIgRQrBsfgitLiKMBFQxDBrSA9q5Rmp4g7nUd8=;
	b=O4eryCVsUnjBD6hEa+ze1mWlC8K9NWq6yYK/TgiE7CzjB2F1I45N3rq82rGDqi5OSt
	uaOaz9jF+3lGhUTlxmzuJaQg8XGbj8cok5jaA2nC9ltqvSu3ryx1mJhNa62tqIHpEVWL
	kyojH9O/3qA8GA0gX9JWeBNlwomFp0Onh2Fl9lj7KbWoDRZFV3AjjHJFknEh9OedYjSD
	MrGEIBXAE2xRq9LK1z33KtFQJ86ucttSvQ6qlQQE84X8t9uVxwpfF0BAsHWjyQcRGcwh
	SOM1WZUueqRB+FW9hxMZ4jZ+b7tiw/EEQjktXzDB3hfh3JLGH4Pfu35Sg4ojBEx/5RKM
	i8Ag==
X-Gm-Message-State: ALoCoQmXYb8NAd0tOYohGZ5RofaCF/OrddLumDwxozALACPJ4cwqJDoIb39J0Z+N+wqKzD5ar5ni
X-Received: by 10.180.74.230 with SMTP id x6mr9437753wiv.58.1427842331955;
	Tue, 31 Mar 2015 15:52:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.224.193 with HTTP; Tue, 31 Mar 2015 15:51:51 -0700 (PDT)
X-Originating-IP: [89.136.6.31]
In-Reply-To: <55196CC9.5050607@mlbassoc.com>
References: <1427696400-3216-1-git-send-email-ouf_du_45@hotmail.com>
	<55196CC9.5050607@mlbassoc.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 1 Apr 2015 00:51:51 +0200
Message-ID: <CAK18fxEqM=Wf0Thq1PWyTsC-KC-gjczouys2MqveA31P_BS-2A@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] spitools : Add new package
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
X-List-Received-Date: Tue, 31 Mar 2015 22:52:17 -0000
Content-Type: multipart/alternative; boundary=f46d0438957ffde7e905129d72dc

--f46d0438957ffde7e905129d72dc
Content-Type: text/plain; charset=UTF-8

Hello guys,

On Mon, Mar 30, 2015 at 5:33 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2015-03-30 00:20, texierp wrote:
>
>> Signed-off-by: texierp <ouf_du_45@hotmail.com>
>> ---
>>   recipes-devtools/spitools/spitools_git.bb | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/recipes-devtools/spitools/spitools_git.bb
>> b/recipes-devtools/spitools/spitools_git.bb
>> index 287e3eb..128ad7f 100644
>> --- a/recipes-devtools/spitools/spitools_git.bb
>> +++ b/recipes-devtools/spitools/spitools_git.bb
>> @@ -1,5 +1,6 @@
>>   DESCRIPTION = "This package contains some simple command line tools to
>> help using Linux spidev devices"
>>   HOMEPAGE = "https://github.com/cpb-/spi-tools"
>> +AUTHOR = "Christophe BLAESS"
>>   LICENSE="GPLv2"
>>   LIC_FILES_CHKSUM = "file://LICENSE;md5=8c16666ae6c159876a0ba630996143
>> 81"
>>
>>
>>
> The email subject line doesn't match what's happening in the patch.

Also, why put this in meta-raspberrypi?  It probably makes more
> sense to put it in meta-oe since it doesn't seem to be RaspberryPi
> specific.
>
>
Gary has a fair point here. First of all this patch seems to fix the AUTHOR
and I would rebase it into the initial one. On the other hand meta-oe
should be the place where to submit it. I'm saying this because I don't see
how is this rpi specific.

Thanks,

-- 
*Andrei Gherzan*
*e: **andrei@gherzan.ro <andrei@gherzan.ro>*
*w: *www.gherzan.ro

--f46d0438957ffde7e905129d72dc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello guys,<br><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On Mon, Mar 30, 2015 at 5:33 PM, Gary Thomas <span dir=3D"=
ltr">&lt;<a href=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbass=
oc.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,20=
4,204);border-left-style:solid;padding-left:1ex"><span class=3D"">On 2015-0=
3-30 00:20, texierp wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">
Signed-off-by: texierp &lt;<a href=3D"mailto:ouf_du_45@hotmail.com" target=
=3D"_blank">ouf_du_45@hotmail.com</a>&gt;<br>
---<br>
=C2=A0 recipes-devtools/spitools/<a href=3D"http://spitools_git.bb" target=
=3D"_blank">spit<u></u>ools_git.bb</a> | 1 +<br>
=C2=A0 1 file changed, 1 insertion(+)<br>
<br>
diff --git a/recipes-devtools/spitools/<a href=3D"http://spitools_git.bb" t=
arget=3D"_blank">sp<u></u>itools_git.bb</a> b/recipes-devtools/spitools/<a =
href=3D"http://spitools_git.bb" target=3D"_blank">sp<u></u>itools_git.bb</a=
><br>
index 287e3eb..128ad7f 100644<br>
--- a/recipes-devtools/spitools/<a href=3D"http://spitools_git.bb" target=
=3D"_blank">sp<u></u>itools_git.bb</a><br>
+++ b/recipes-devtools/spitools/<a href=3D"http://spitools_git.bb" target=
=3D"_blank">sp<u></u>itools_git.bb</a><br>
@@ -1,5 +1,6 @@<br>
=C2=A0 DESCRIPTION =3D &quot;This package contains some simple command line=
 tools to help using Linux spidev devices&quot;<br>
=C2=A0 HOMEPAGE =3D &quot;<a href=3D"https://github.com/cpb-/spi-tools" tar=
get=3D"_blank">https://github.com/cpb-/spi-<u></u>tools</a>&quot;<br>
+AUTHOR =3D &quot;Christophe BLAESS&quot;<br>
=C2=A0 LICENSE=3D&quot;GPLv2&quot;<br>
=C2=A0 LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3D<u></u>8c16666ae6c15=
9876a0ba630996143<u></u>81&quot;<br>
<br>
<br>
</blockquote>
<br></span>
The email subject line doesn&#39;t match what&#39;s happening in the patch.=
</blockquote><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-=
style:solid;padding-left:1ex">
Also, why put this in meta-raspberrypi?=C2=A0 It probably makes more<br>
sense to put it in meta-oe since it doesn&#39;t seem to be RaspberryPi<br>
specific.<span class=3D""><font color=3D"#888888"><br>
<br></font></span></blockquote><div><br></div><div>Gary has a fair point he=
re. First of all this patch seems to fix the AUTHOR and I would rebase it i=
nto the initial one. On the other hand meta-oe should be the place where to=
 submit it. I&#39;m saying this because I don&#39;t see how is this rpi spe=
cific.<br></div><div><br></div><div>Thanks,</div></div><div><br></div>-- <b=
r><div class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><di=
v style=3D"text-align:center"></div><div style=3D"text-align:center"><div a=
lign=3D"left"><b style=3D"font-family:Arial;font-size:small;color:rgb(51,51=
,51);text-align:center">Andrei Gherzan</b><br></div><div align=3D"left"><b =
style=3D"font-family:Arial;font-size:small;color:rgb(51,51,51);text-align:c=
enter">e: </b><span style=3D"font-family:Arial;font-size:small;color:rgb(51=
,51,51);text-align:center"><i><a href=3D"mailto:andrei@gherzan.ro" target=
=3D"_blank">andrei@gherzan.ro</a></i></span></div><div align=3D"left"><span=
 style=3D"font-family:Arial;font-size:small;color:rgb(51,51,51);text-align:=
center"><i><b>w:</b> </i><a href=3D"http://www.gherzan.ro" target=3D"_blank=
">www.gherzan.ro</a></span></div></div></div></div></div></div>
</div></div>

--f46d0438957ffde7e905129d72dc--
