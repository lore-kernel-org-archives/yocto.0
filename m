Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5EC3BE00DAF; Fri, 26 Feb 2016 17:29:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E161AE00928
	for <yocto@yoctoproject.org>; Fri, 26 Feb 2016 17:29:11 -0800 (PST)
Received: by mail-io0-f174.google.com with SMTP id l127so139090645iof.3
	for <yocto@yoctoproject.org>; Fri, 26 Feb 2016 17:29:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kergoth-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=SLCGt4mBltK3m4NyKf5aBgb/mNG7852/py3B1yqF4Z8=;
	b=g8BEXg1mRvHGKpbXeltJgcWlyD3t/TEkzGqE5wn4Po8RDiCQnV5+jfmkuXtaQoUbxq
	Ey0XPFlc2wqq59y+LUhSMey1p94iqSTHLS96o7dZh77xXBcV2tx0t4RNC3ccvXEyLkqt
	EPe31HFMdCP6IEy1T76fR5h4SSkY1yDg3jU5F4fnWAgknT/FX6vsvIFc75urzVsupgtV
	pm4HkNxuPvCWVawKWfjKWeYnsFglW0B1htcogMMs+zlXmryii2EsvFM1SQhYzSyJ4q5y
	MMED8H/Op+hnOwFjvSt+2tIiExn3wMNbgoGXPPzNaeKauvuD6JIyQgC8PYExwdMdpEQl
	Ennw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=SLCGt4mBltK3m4NyKf5aBgb/mNG7852/py3B1yqF4Z8=;
	b=YP7yq8+mE8vCSBKcY77rGmUFKROMIelr96WDQls/Twdi+DFZ0DbsRmbIqfYXASOOFW
	A2oEuxQ82A/jXwobjkimb8ymxKVEMw0W/vyXuPAQLsbXTcoYAgSkgpIl+3JYXglFmam+
	RpbhNZgU0g5JO61RhywpZc0quupGDUP6HgEtuiRQP+JqLnFY4jPn2X9RZpDafPvAP1OM
	2ju6cLVfTBERmv2BOn1tUFdS8EUy6+ka/+vXShu0EK/GsOdcvKRsWKlK3o+f0P2h6tot
	/jNtnq6Iw7lOZpWa3dY3+jJJ+LWYPewsJabsvC/J/B1EBoEfbNVd6uQ/q+cB1bwdFLHl
	vBQA==
X-Gm-Message-State: AG10YOSFwgOSAYJbhVnvthfhGoF5XEFot/wFdi85CELJl+wBbYnV5lKQ1WedShSpFo29oM9eniXiG/bhA6MZxg==
X-Received: by 10.107.12.226 with SMTP id 95mr11380307iom.70.1456536550619;
	Fri, 26 Feb 2016 17:29:10 -0800 (PST)
MIME-Version: 1.0
References: <1456508168.11498.95.camel@linuxfoundation.org>
	<56D09D35.8040002@balister.org>
	<1456512644.11498.108.camel@linuxfoundation.org>
	<2042150.gN3rpHrprf@rjs-zotac.streifs.net>
	<56D0B298.9050108@balister.org>
	<CAJTo0LbNVZ9k5P+ugk-kg4_PBG0P8nbkJpBHjkv2XqvJrjsdyA@mail.gmail.com>
In-Reply-To: <CAJTo0LbNVZ9k5P+ugk-kg4_PBG0P8nbkJpBHjkv2XqvJrjsdyA@mail.gmail.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Sat, 27 Feb 2016 01:29:00 +0000
Message-ID: <CABcZANnFXbde4wY5wTzZb0FMfJN4z_zZjNLb2GtMu-tuRws+xA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>,
	Philip Balister <philip@balister.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Rudolf J Streif <rudolf.streif@gmail.com>,
	"openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] Yocto Project Status WW09
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
X-List-Received-Date: Sat, 27 Feb 2016 01:29:14 -0000
Content-Type: multipart/alternative; boundary=001a113f8f8eb3c123052cb6574c

--001a113f8f8eb3c123052cb6574c
Content-Type: text/plain; charset=UTF-8

This is the sort of case where it'd be nice if bitbake provided a plugin
mechanism, pure python, no metadata parsing. Something to think about in
the long term..
On Fri, Feb 26, 2016 at 1:59 PM Burton, Ross <ross.burton@intel.com> wrote:

>
> On 26 February 2016 at 20:16, Philip Balister <philip@balister.org> wrote:
>
>> I must admit, I'm surprised this is tricky. I look forward to seeing
>> what needs doing. Hopefully, it shows me things I can avoid in my work.
>>
>
> The moral of the story is don't rename layers if you want to maintain a
> semblance of migration.  Renaming meta-yocto to meta-poky means the
> bblayers.conf is invalid, so the migration code can't run because bitbake
> aborts too early.
>
> Ross
> --
> _______________________________________________
> Openembedded-core mailing list
> Openembedded-core@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-core
>

--001a113f8f8eb3c123052cb6574c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

This is the sort of case where it&#39;d be nice if bitbake provided a plugi=
n mechanism, pure python, no metadata parsing. Something to think about in =
the long term..<br><div class=3D"gmail_quote"><div dir=3D"ltr">On Fri, Feb =
26, 2016 at 1:59 PM Burton, Ross &lt;<a href=3D"mailto:ross.burton@intel.co=
m">ross.burton@intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_qu=
ote">On 26 February 2016 at 20:16, Philip Balister <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:philip@balister.org" target=3D"_blank">philip@balister.org<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div style=3D"overf=
low:hidden">I must admit, I&#39;m surprised this is tricky. I look forward =
to seeing<br>
what needs doing. Hopefully, it shows me things I can avoid in my work.<br>=
</div></blockquote></div><br></div></div><div dir=3D"ltr"><div class=3D"gma=
il_extra">The moral of the story is don&#39;t rename layers if you want to =
maintain a semblance of migration.=C2=A0 Renaming meta-yocto to meta-poky m=
eans the bblayers.conf is invalid, so the migration code can&#39;t run beca=
use bitbake aborts too early.</div></div><div dir=3D"ltr"><div class=3D"gma=
il_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>
--<br>
_______________________________________________<br>
Openembedded-core mailing list<br>
<a href=3D"mailto:Openembedded-core@lists.openembedded.org" target=3D"_blan=
k">Openembedded-core@lists.openembedded.org</a><br>
<a href=3D"http://lists.openembedded.org/mailman/listinfo/openembedded-core=
" rel=3D"noreferrer" target=3D"_blank">http://lists.openembedded.org/mailma=
n/listinfo/openembedded-core</a><br>
</blockquote></div>

--001a113f8f8eb3c123052cb6574c--
