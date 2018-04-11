Return-Path: <mans.zigher@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 447EAE009C8; Wed, 11 Apr 2018 08:59:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_EXCESS_BASE64,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mans.zigher[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-ot0-f181.google.com (mail-ot0-f181.google.com
	[74.125.82.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CABBE00529
	for <yocto@yoctoproject.org>; Wed, 11 Apr 2018 08:59:26 -0700 (PDT)
Received: by mail-ot0-f181.google.com with SMTP id n40-v6so2556810otd.3
	for <yocto@yoctoproject.org>; Wed, 11 Apr 2018 08:59:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=56wi8Aj+LSQwpfQvTcNp7JvR6oVNaekvLy94JiTrsEU=;
	b=KIh8IACs8ErdiolTUyA9eCPTHmOc5/KbUmpejnNSn1lDW43o12cfpccaxoK8JMZ71+
	IXq2DbikApIUDL9fMFaQNYsHJ9s8SEK2mtqaGnA2RWfxjgJE3i1LWqP6PmbP0nl5zHb5
	69XuWDUng+qbHBIQWX5Rb8pVJHvjX1J5I5Quv/qGRuC9Nr1J3YYoGCYTHE8Prf+jc6fm
	OSi3ZSbv5lROpgxpH6JsC/hcTcqjJdTvpxMDNMfsXcG2LnBi2DGbFRzPdNj2POXx1vI4
	hh6dFPv7Uyljt880avsiPfjMugXHvdWUMTASWJyPYUGeIwSajDEccIxzk+kqBOmaos4a
	jH+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=56wi8Aj+LSQwpfQvTcNp7JvR6oVNaekvLy94JiTrsEU=;
	b=DXh0SM9BblcbN8r4lBWc8ZwbX2fhTbxsXcEnvPJqkQT0F4Uqn2/xjADm/nOFtOxraT
	YFuspQc0fGDokvGEkXXRnbfKdzlR57Y0nC2VNhTEzhjX1/iCoSpPwREabGkUe8yU8pvT
	bzuCb4PEP7jgVWsrZbceacNsiDBJs8WWzO7Pw5UTo6nyXtc65To5Lbk2KjakcpI1zSXl
	fCyFJaGsp2S6Z80h/45S79c+sub8FRQVcIywqZTC899FXdqd0+4yRWNZI8aTp2qfdMr/
	oBchpTJZxFSXZRwykzOfLOQ+wH2Vff/rSrkppZVP+wfUszFrvZLwmp2mPhZqsq41OZ3m
	pAcQ==
X-Gm-Message-State: ALQs6tD40SHg42o477PYHPCJZwtq3OZXz1XjnsgRItwsGo31QSdQ+3T6
	oDbTMFCeUpS/43Mgw7HYF/6RL/rDIGAFmGBrsac=
X-Google-Smtp-Source: AIpwx4/D4fdOinqNMaZZcFB8LVjveMZIHXdHT6vsIkxioxYAsZxP/T9RrWtgGk2i1KjZ5NYoVXIe/QH/T3oD/gpTh4Y=
X-Received: by 2002:a9d:3ff4:: with SMTP id
	i49-v6mr3710479ote.378.1523462365509; 
	Wed, 11 Apr 2018 08:59:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAEhQi8=Y7ofTEoTYgdQYkTS31j8W=aL3Hm_QSfuz8qom5r9Xfw@mail.gmail.com>
	<CAJTo0LajNnRO0zQ581LcM0uMMby-=KPiPo7p_fcJzAGNYpM=9Q@mail.gmail.com>
	<CAEhQi8kGya0qqB8Pj=dSgLaVFR_g2FRK1cuVYrPOBXrogUf8dw@mail.gmail.com>
	<CAJTo0LY664+aNeyXWPGLdvfqaD0+3O3HxzOyOWuiX+feNf3MRw@mail.gmail.com>
In-Reply-To: <CAJTo0LY664+aNeyXWPGLdvfqaD0+3O3HxzOyOWuiX+feNf3MRw@mail.gmail.com>
From: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Date: Wed, 11 Apr 2018 15:59:14 +0000
Message-ID: <CAEhQi8m2_8QKxH3aLmjc7ZWCGVeCbQR=kbdocuBBJrhsOPFcng@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Is the a reason for adding the + to SRCPV?
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
X-List-Received-Date: Wed, 11 Apr 2018 15:59:27 -0000
Content-Type: multipart/alternative; boundary="0000000000001ffee8056994b9a5"

--0000000000001ffee8056994b9a5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Thanks for your help. It is a cmake project in which they have specified a
custom command calling gdbus-codegen. It definitely looks like they are
passing the absolute path to it thanks for the help I think I can solve
that.

Br
Mans Zigher

On Apr 11, 2018 15:50, "Burton, Ross" <ross.burton@intel.com> wrote:

There is no "dbus codegen".  dbus-glib has a code generator but that
doesn't write include guards like that, so it must be something else.
gdbus-codegen appears to be doing the right thing to unless it breaks
if you pass it an absolute path?


Ross


On 11 April 2018 at 10:12, M=C3=A5ns Zigher <mans.zigher@gmail.com> wrote:
> I believe dbus codegen is the tools generating the code.
>
> Br
> Mans Zigher
>
> On Tue, Apr 10, 2018, 14:44 Burton, Ross <ross.burton@intel.com> wrote:
>>
>> What tool is generating the code?  It probably shouldn't be using the
>> full path of the header...
>>
>> Ross
>>
>> On 10 April 2018 at 09:29, M=C3=A5ns Zigher <mans.zigher@gmail.com> wrot=
e:
>> > Hi,
>> >
>> > I am having some problems with one of my recipes when using the SRCPV
>> > the
>> > get_srcrev is returning "AUTOINC+" + rev. This will cause problem in m=
y
>> > compile because I am using dbus codegen and it looks like the
>> > auto-generated
>> > code cannot handle the + sign in the paths. Is there a reason for this
+
>> > sign. The generated code that causes my build to fail looks like this
>> >
>> > #ifndef
>> >
>> >
___HOME_EXTZIG_WORKSPACE_MOZART_MOZART_WORKSPACE_BUILDS_MOZART_RASPBERRYPI_=
BUILD_TMP_WORK_CORTEXA7HF_NEON_VFPV4_MOZART_LINUX_GNUEABI_MOZART_DAEMON_1_0=
_GITAUTOINC+8FD4C803AE_R3_GIT_SRC_LIBS_MOZART_BLE_SETUP_CODEGEN_ORG_BLUEZ_L=
E_ADVERTISEMENT_INTERFACE_H__
>> >
>> > Currently the only way for me to get the build to work is not use the
>> > SRCPV.
>> > Could it actually be a better way then using the + sign or is there a
>> > logical requirement for it?
>> >
>> > BR
>> > Mans Zigher
>> >
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>> >

--0000000000001ffee8056994b9a5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div dir=3D"auto"></div><div class=3D"gmail_extra">Hi,</d=
iv><div class=3D"gmail_extra" dir=3D"auto"><br></div><div class=3D"gmail_ex=
tra" dir=3D"auto">Thanks for your help. It is a cmake project in which they=
 have specified a custom command calling gdbus-codegen. It definitely looks=
 like they are passing the absolute path to it thanks for the help I think =
I can solve that.</div><div class=3D"gmail_extra" dir=3D"auto"><br></div><d=
iv class=3D"gmail_extra" dir=3D"auto">Br</div><div class=3D"gmail_extra" di=
r=3D"auto">Mans Zigher</div><div class=3D"gmail_extra" dir=3D"auto"><br><di=
v class=3D"gmail_quote" dir=3D"auto">On Apr 11, 2018 15:50, &quot;Burton, R=
oss&quot; &lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank" re=
l=3D"noreferrer">ross.burton@intel.com</a>&gt; wrote:<br type=3D"attributio=
n"><blockquote class=3D"m_-2631858973653778130quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex">There is no &quot;dbus co=
degen&quot;.=C2=A0 dbus-glib has a code generator but that<br>
doesn&#39;t write include guards like that, so it must be something else.<b=
r>
gdbus-codegen appears to be doing the right thing to unless it breaks<br>
if you pass it an absolute path?<div class=3D"m_-2631858973653778130signatu=
re-text"><br>
<br>
Ross</div><div class=3D"m_-2631858973653778130elided-text"><br>
<br>
On 11 April 2018 at 10:12, M=C3=A5ns Zigher &lt;<a href=3D"mailto:mans.zigh=
er@gmail.com" rel=3D"noreferrer noreferrer" target=3D"_blank">mans.zigher@g=
mail.com</a>&gt; wrote:<br>
&gt; I believe dbus codegen is the tools generating the code.<br>
&gt;<br>
&gt; Br<br>
&gt; Mans Zigher<br>
&gt;<br>
&gt; On Tue, Apr 10, 2018, 14:44 Burton, Ross &lt;<a href=3D"mailto:ross.bu=
rton@intel.com" rel=3D"noreferrer noreferrer" target=3D"_blank">ross.burton=
@intel.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; What tool is generating the code?=C2=A0 It probably shouldn&#39;t =
be using the<br>
&gt;&gt; full path of the header...<br>
&gt;&gt;<br>
&gt;&gt; Ross<br>
&gt;&gt;<br>
&gt;&gt; On 10 April 2018 at 09:29, M=C3=A5ns Zigher &lt;<a href=3D"mailto:=
mans.zigher@gmail.com" rel=3D"noreferrer noreferrer" target=3D"_blank">mans=
.zigher@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt; Hi,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I am having some problems with one of my recipes when using t=
he SRCPV<br>
&gt;&gt; &gt; the<br>
&gt;&gt; &gt; get_srcrev is returning &quot;AUTOINC+&quot; + rev. This will=
 cause problem in my<br>
&gt;&gt; &gt; compile because I am using dbus codegen and it looks like the=
<br>
&gt;&gt; &gt; auto-generated<br>
&gt;&gt; &gt; code cannot handle the + sign in the paths. Is there a reason=
 for this +<br>
&gt;&gt; &gt; sign. The generated code that causes my build to fail looks l=
ike this<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; #ifndef<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; ___HOME_EXTZIG_WORKSPACE_MOZART_MOZART_WORKSPACE_BUILDS_MOZAR=
T_RASPBERRYPI_BUILD_TMP_WORK_CORTEXA7HF_NEON_VFPV4_MOZART_LINUX_GNUEABI_MOZ=
ART_DAEMON_1_0_GITAUTOINC+8FD4C803AE_R3_GIT_SRC_LIBS_MOZART_BLE_SETUP_CODEG=
EN_ORG_BLUEZ_LE_ADVERTISEMENT_INTERFACE_H__<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Currently the only way for me to get the build to work is not=
 use the<br>
&gt;&gt; &gt; SRCPV.<br>
&gt;&gt; &gt; Could it actually be a better way then using the + sign or is=
 there a<br>
&gt;&gt; &gt; logical requirement for it?<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; BR<br>
&gt;&gt; &gt; Mans Zigher<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; --<br>
&gt;&gt; &gt; _______________________________________________<br>
&gt;&gt; &gt; yocto mailing list<br>
&gt;&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org" rel=3D"noreferrer n=
oreferrer" target=3D"_blank">yocto@yoctoproject.org</a><br>
&gt;&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=
=3D"noreferrer noreferrer noreferrer" target=3D"_blank">https://lists.yocto=
project.org/listinfo/yocto</a><br>
&gt;&gt; &gt;<br>
</div></blockquote></div><br></div></div>

--0000000000001ffee8056994b9a5--
