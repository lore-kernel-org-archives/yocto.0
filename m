Return-Path: <challinan@gmail.com>
Received: from mail-we0-f169.google.com (mail-we0-f169.google.com
	[74.125.82.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE268E01897
	for <yocto@yoctoproject.org>; Mon, 11 Nov 2013 05:25:10 -0800 (PST)
Received: by mail-we0-f169.google.com with SMTP id q58so4662759wes.0
	for <yocto@yoctoproject.org>; Mon, 11 Nov 2013 05:25:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=NbWrdn5DIIuav+oLG+m2c1P1eV38TaZoN2Xyxkd60FU=;
	b=XYr9SVTy5Qu21OXLtcms4rKCnGRDcD/2cjbrRXpa2HQLI1zoQtOvxz+r0dOJlg9w5m
	HUT279tHzxMtLqPoS2+QdoxBPXC/TJ2LwRq0y4IFxESO542VcLMmq8T7tRhDMp+UtwQD
	1ziTFD5MxfK5M8swfMtyrpZJNHHAUzG3T/Sk1CddU75kJUJU0YoCl9QbTFqebakEuxb3
	FgfCBtl25hESyZN2A1ZjYctiZ10JkKpZt+i/AJZeg9h/A5yHh2IdrlSjgQ68tuzgurU2
	G+OAL51y8A0ONso2O+QuipjDMyzVLeCKJLuiFQX+xyh3fi1e+QqZLosmFqAHpUikeaI5
	Krmw==
MIME-Version: 1.0
X-Received: by 10.180.75.39 with SMTP id z7mr12383624wiv.9.1384176308662; Mon,
	11 Nov 2013 05:25:08 -0800 (PST)
Received: by 10.217.126.9 with HTTP; Mon, 11 Nov 2013 05:25:08 -0800 (PST)
In-Reply-To: <527E4D67.20507@mlbassoc.com>
References: <CA+JN8xM_BVwtfu2RkZ324DWvSkxr3uAm+RU6tX6smSoV3ppqRg@mail.gmail.com>
	<527E4D67.20507@mlbassoc.com>
Date: Mon, 11 Nov 2013 08:25:08 -0500
Message-ID: <CAME0jBTaLgXBUfer+0Wfm3kTkY50mR2WfyO2zeK6wo_gsywcUw@mail.gmail.com>
From: Chris Hallinan <challinan@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: ldd
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
X-List-Received-Date: Mon, 11 Nov 2013 13:25:12 -0000
Content-Type: multipart/alternative; boundary=f46d043c06c630757904eae6a90c

--f46d043c06c630757904eae6a90c
Content-Type: text/plain; charset=ISO-8859-1

On Sat, Nov 9, 2013 at 9:57 AM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2013-11-09 06:42, Seth Bollinger wrote:
>
>> Hello All,
>>
>> I don't see that ldd is part of the cross toolchain build anywhere.  Am I
>> missing something?
>>
>
> It's built with the eglibc recipe and is packaged separately.
>
>
Gosh, I though ldd, originally a hard-to-maintain script, was obsoleted a
long time ago. This command:

$ readelf --dynamic <binary>

provides the same information, and readelf can be found in every cross
toolchain.

-Chris

-- 
Life is like Linux - it never stands still.

--f46d043c06c630757904eae6a90c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">On Sat, Nov 9, 2013 at 9:57 AM,=
 Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mailto:gary@mlbassoc.com" tar=
get=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wrote:<br><div class=3D"gma=
il_quote">
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On 2013-11-09 06:42, Seth =
Bollinger wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hello All,<br>
<br>
I don&#39;t see that ldd is part of the cross toolchain build anywhere. =A0=
Am I missing something?<br>
</blockquote>
<br></div>
It&#39;s built with the eglibc recipe and is packaged separately.<span clas=
s=3D"HOEnZb"><font color=3D"#888888"><br>
<br></font></span></blockquote><div><br></div><div>Gosh, I though ldd, orig=
inally a hard-to-maintain script, was obsoleted a long time ago. This comma=
nd:</div><div><br></div><div>$ readelf --dynamic &lt;binary&gt;=A0</div>
<div><br></div><div>provides the same information, and readelf can be found=
 in every cross toolchain.</div><div><br></div><div>-Chris</div></div><div>=
<br></div>-- <br>Life is like Linux - it never stands still.<br><br>
</div></div>

--f46d043c06c630757904eae6a90c--
