Return-Path: <philippe.coval.pro@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96D30E00DFB; Mon,  5 Mar 2018 08:07:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (philippe.coval.pro[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-ua0-f194.google.com (mail-ua0-f194.google.com
	[209.85.217.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1717E00833
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2018 08:07:45 -0800 (PST)
Received: by mail-ua0-f194.google.com with SMTP id f6so5551457ual.0
	for <yocto@yoctoproject.org>; Mon, 05 Mar 2018 08:07:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=/TZjw+vjGndqmVc4SqAlKuLXCmBPZ8xYgf8uSxSM28I=;
	b=S4Tj16Zx8SimpOqPrBlj7AdavHPur/W4AFz868KnoUtYHoDeZCRqxV60nOHYvIeO+Z
	VWBVBE+m//MpdPRRa23/SMlaoTKg0hrFoJ3Lj6B8XXdk80YfGUJXfNbVMjGQ3BnFyJWz
	TeH/jthac7+y7TrIGK9gQiP5v2yqazhaz2QMz3H9/M926K7rUxkj23LIyhPQcEapBzPU
	XyVfwBGsLCLCQAsmrVlxg16zNNsEEAI7o73d68vPdnKRygLACdODaVXvBrcNhiTIIF3a
	9DPSCAgLmPddu+SC0oHQX+MvPBMp1a43lyMsJ7rqzAk7GE/4NJ7EPSZ7IspJtyFzNDJH
	q+fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=/TZjw+vjGndqmVc4SqAlKuLXCmBPZ8xYgf8uSxSM28I=;
	b=Dx0Q937Jg2WXurtroxe960XoNZoYak7uXxkf/Ez85lwfJQROAz8JMfQDBF2fTjt6WQ
	ZHV32gS26qcywIPnZalXMipwBZpO1KxKJS8hFR5/A6y/TmuMIKq+/Qz3XZ/Kl4VliLUF
	vstOxFn/QUwnL16Ttm+xsqyhg+65nWgfoV1bDtXTJmpcRvLlogl92LttjTRPG8Bd6h/y
	5miwhPcOcj29Lo49rap7Cuzte7QYi6w8nWIbQwJQvW/gabvM95PzCgBTegOvaXouaycO
	GxVvCVxj+ck2XozQ6rNMBi2U/RAWz+0ryaUiz6f/Sy/psCEpPs7Cs/UxtHorNcWlA2Fi
	L3IQ==
X-Gm-Message-State: APf1xPBsAzkxJan3HsFOv+HGzfnlOiNyyQCu+HLbIKV3ZztlFStpf6rp
	KHxWEkqil/wGXj7d97R50POzMhvCuu7T6gSn/wE=
X-Google-Smtp-Source: AG47ELsB2fLQJa3u1Mk7DpJuvaOxFyEJkfW9aIXojq9WNenYeMef1/Zr+7Yks07S5NT8XR0KpYEa2E74+OdjxBh8goA=
X-Received: by 10.159.58.215 with SMTP id q23mr10358532uag.129.1520266064953; 
	Mon, 05 Mar 2018 08:07:44 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.39.99 with HTTP; Mon, 5 Mar 2018 08:07:44 -0800 (PST)
In-Reply-To: <CAPTzV17QSxoOtVU3fTdVpppJcRrcACVT4uDro_rUH6PP+B34-g@mail.gmail.com>
References: <CAPTzV16hShVj_HsC4Ykd-HC_J+hGewG+DQYyB+=kD1mgsu56gA@mail.gmail.com>
	<952a174d-ae9f-e82f-3294-1d9490cf8da7@osg.samsung.com>
	<CAPTzV17QSxoOtVU3fTdVpppJcRrcACVT4uDro_rUH6PP+B34-g@mail.gmail.com>
From: Philippe Coval <philippe.coval.pro@gmail.com>
Date: Mon, 5 Mar 2018 17:07:44 +0100
Message-ID: <CACn9BzmV3BchF-kSLNXUG8dfCywONT5mMTDk5aygncWR9VcNgQ@mail.gmail.com>
To: Chanho Park <parkch98@gmail.com>
X-Mailman-Approved-At: Mon, 05 Mar 2018 08:08:54 -0800
Cc: "iotivity-dev@lists.iotivity.org" <iotivity-dev@lists.iotivity.org>,
	yocto@yoctoproject.org, Philippe Coval <philippe.coval@osg.samsung.com>
Subject: Re: [dev] [meta-oic] Question about Iotivity 1.3.0/1 and fixes status
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
X-List-Received-Date: Mon, 05 Mar 2018 16:07:46 -0000
Content-Type: multipart/alternative; boundary="f40304366014c406e80566ac86c1"

--f40304366014c406e80566ac86c1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 12, 2018 at 3:26 AM, Chanho Park <parkch98@gmail.com> wrote:

> Hi Philippe,
>
> On Thu, 11 Jan 2018 at 7:11 PM Philippe Coval <philippe.coval@osg.samsung=
.
> com> wrote:
>
>>
>> On 11/01/18 02:30, Chanho Park wrote:
>> > Hi Philippe,
>> >
>
>

> Okay. I=E2=80=99ll test them when you resend them. Please CCing me at tha=
t time.
>>
>
>
1.3.0 is now merged in:

http://git.yoctoproject.org/cgit/cgit.cgi/meta-oic/commit/README?id=3Deb7df=
c4764ce538fc84eb40f1ca7ed7e14eb1f1d

I will commit more pending patches in coming days/week,
feedback is always welcome in iotivity tracker (add yocto label)



> Okay. I look forward to your results :)
> Thanks.
>
>
Thank you for your patience, now It should me faster since I got commit
rights.

Regards

--=20
gpg:0x467094BC
xmpp:philippe.coval.pro@gmail.com
https://wiki.tizen.org/wiki/User:Pcoval

--f40304366014c406e80566ac86c1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Fri, Jan 12, 2018 at 3:26 AM, Chanho Park <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:parkch98@gmail.com" target=3D"_blank">parkch98@gmail.com</a>&=
gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
><div dir=3D"auto">Hi Philippe,</div><br><div class=3D"gmail_quote"><span c=
lass=3D"gmail-"><div dir=3D"auto">On Thu, 11 Jan 2018 at 7:11 PM Philippe C=
oval &lt;<a href=3D"mailto:philippe.coval@osg.samsung.com" target=3D"_blank=
">philippe.coval@osg.samsung.<wbr>com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><br>
On 11/01/18 02:30, Chanho Park wrote:<br>
&gt; Hi Philippe,<br>
&gt;</blockquote></span></div></div></blockquote><div>=C2=A0</div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div><div class=3D"gmail_quote"><s=
pan class=3D"gmail-"><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Okay=
. I=E2=80=99ll test them when you resend them. Please CCing me at that time=
.<br></blockquote></span><span class=3D"gmail-"><div dir=3D"auto"><br></div=
></span></div></div></blockquote><div><br></div><div>1.3.0 is now merged in=
:</div><div><br></div><div><a href=3D"http://git.yoctoproject.org/cgit/cgit=
.cgi/meta-oic/commit/README?id=3Deb7dfc4764ce538fc84eb40f1ca7ed7e14eb1f1d">=
http://git.yoctoproject.org/cgit/cgit.cgi/meta-oic/commit/README?id=3Deb7df=
c4764ce538fc84eb40f1ca7ed7e14eb1f1d</a><br></div><div><br></div><div>I will=
 commit more pending patches in coming days/week,</div><div>feedback is alw=
ays welcome in iotivity tracker (add yocto label)</div><div><br></div><div>=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div><div cla=
ss=3D"gmail_quote"><div dir=3D"auto">Okay. I look forward to your results :=
)</div><div dir=3D"auto">Thanks.</div><span class=3D"gmail-"><div dir=3D"au=
to"><br></div></span></div></div></blockquote><div><br></div><div>Thank you=
 for your patience, now It should me faster since I got commit rights.</div=
><div><br></div><div>Regards</div><div>=C2=A0</div></div><div class=3D"gmai=
l_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div>--=C2=A0</div><div=
><span style=3D"font-size:12.8px">gpg:0x467094BC</span><br><span style=3D"f=
ont-size:12.8px"><a href=3D"mailto:xmpp%3Aphilippe.coval.pro@gmail.com" tar=
get=3D"_blank">xmpp:philippe.coval.pro@gmail.com</a></span><br style=3D"fon=
t-size:12.8px"><a href=3D"https://wiki.tizen.org/wiki/User:Pcoval" style=3D=
"font-size:12.8px" target=3D"_blank">https://wiki.tizen.org/wiki/User:Pcova=
l</a><br></div><div><br>
</div></div></div></div></div>
</div></div>

--f40304366014c406e80566ac86c1--
