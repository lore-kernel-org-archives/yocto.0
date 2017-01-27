Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36542E0050B; Fri, 27 Jan 2017 11:46:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, 
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.173 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f173.google.com (mail-qt0-f173.google.com
	[209.85.216.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6433E003DB
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2017 11:46:05 -0800 (PST)
Received: by mail-qt0-f173.google.com with SMTP id k15so152811935qtg.3
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2017 11:46:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=gV0SFBm34LpKHp1t/EK/1cSy8Hj1DHS0qVOT45BsO9k=;
	b=nevnQgpT7V7q21wHUDEyz8ehZjLh/oTXUh76FLpvUglkcOgv8uVqtWZmzsDPE7lQO4
	V0OAYpjjKIkOl8OlJoSl43Nha2RZM90nMTyaKFoG15neghkzaxo2ut0QAxz90gHQ8XY5
	3KAl5XvlmH6NfMsojnjaqkp1wOD1l57s25CiX4QJo8IeES9BpXio300yoQd54MhVMvD7
	xTSDWCKJVAwSwlokAR2mxk6XHpV7XSaKDZpgKvDi47+XLdkHh/EDXPmzFuP5U2WZ5/9F
	iU65Xs0ipeo7bzzMCjN1InIqbbbrFwe2rjlsTdYpigMn6WCuV17p9seFSOI8YkQMPXqn
	cJdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=gV0SFBm34LpKHp1t/EK/1cSy8Hj1DHS0qVOT45BsO9k=;
	b=re3I/W6d7DuHwZSTGc9hreCZCZtGek9CMiScQ7ntTtcZPjBJQPVlRAO7J42fv0OM1g
	CTxx6aGS0qppNlfuL97ysvlY38gNkVVOSBO9CHnWTI4IhbBJ5JBdgFrR6GsS1NAAZUhN
	ZKE20VF2XbixpHFQrVM6wX04K1Ag37Udjy63X8TCXm/iSpLdqj+HMNy0xaG6UWmMCrQE
	uyfckDmiIKh0phFgAscf1wHB6hzsvk2oy6h5rBJmRywd1HXGVX/EE5YRKe9s2ukuOV64
	9SVNXrD2rXriXX+qk4nfMobt+MOAUOe4kwAbWi/e8HtzPrppIe4ylIRKIydVl63N5gBA
	L+2A==
X-Gm-Message-State: AIkVDXJW8futFQkDBOdIXYjdv1YIHjdrrZFaAj2uVP28dh6AaJV1L7leIIehViXRY2BkOAyIf3f3f7rgIg2Egg==
X-Received: by 10.55.110.6 with SMTP id j6mr9862201qkc.151.1485546364743; Fri,
	27 Jan 2017 11:46:04 -0800 (PST)
MIME-Version: 1.0
Received: by 10.200.39.252 with HTTP; Fri, 27 Jan 2017 11:46:04 -0800 (PST)
In-Reply-To: <588ba270.4c18370a.3b01f.9247.GMRIR@mx.google.com>
References: <1484834687-15746-1-git-send-email-jacob-chen@iotwrt.com>
	<1484834687-15746-3-git-send-email-jacob-chen@iotwrt.com>
	<CABgxDo+5x6-ByOUikkG45S6Yo5NO+=L4S3GRX7firgpMqQQiAA@mail.gmail.com>
	<CAHUNapS5cAGbdbkHcTOaEJM9SKhHOJb8naqFxacbCvBj24crUw@mail.gmail.com>
	<CAHUNapS5cAGbdbkHcTOaEJM9SKhHOJb8naqFxacbCvBj24crUw@mail.gmail.com>
	<588ba270.4c18370a.3b01f.9247.GMRIR@mx.google.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Fri, 27 Jan 2017 14:46:04 -0500
Message-ID: <CAHUNapT3t87kda6qXR3fgF9Oaag69-WLMhdcOKhso34518zajA@mail.gmail.com>
To: Romain Perier <romain.perier@gmail.com>, Jacob Chen <jacob-chen@iotwrt.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Eddie Cai <eddie.cai@rock-chips.com>
Subject: Re: Delivery Status Notification (Failure)
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
X-List-Received-Date: Fri, 27 Jan 2017 19:46:07 -0000
X-Groupsio-MsgNum: 34132
Content-Type: multipart/related; boundary=94eb2c05e90a5e5454054718b754

--94eb2c05e90a5e5454054718b754
Content-Type: multipart/alternative; boundary=94eb2c05e90a5e5452054718b753

--94eb2c05e90a5e5452054718b753
Content-Type: text/plain; charset=UTF-8

Jacob,

gmail bounced this message back from the "jacob-chen@rock-chips.com" email
address since the mail handler for rock-chips.com said the "jacob-chen"
user does not exist. We can't accept a Signed-off-by line that doesn't
point to a valid email address. Please adjust your Signed-off-by line to
point to a real email address.

Best regards,
    Trevor

On Fri, Jan 27, 2017 at 2:41 PM, Mail Delivery Subsystem <
mailer-daemon@googlemail.com> wrote:

> [image: Error Icon]
> Message not delivered
> There was a problem delivering your message to *jacob-chen@rock-chips.com*.
> See the technical details below, or try resending in a few minutes.
> The response from the remote server was:
>
> 550 jacob-chen@rock-chips.com:user not exist
>
> Final-Recipient: rfc822; jacob-chen@rock-chips.com
> Action: failed
> Status: 5.0.0
> Remote-MTA: dns; mxwcom.263xmail.com. (38.83.106.84, the server for the
> domain rock-chips.com.)
> Diagnostic-Code: smtp; 550 jacob-chen@rock-chips.com:user not exist
> Last-Attempt-Date: Fri, 27 Jan 2017 11:41:36 -0800 (PST)
>
>
> ---------- Forwarded message ----------
> From: Trevor Woerner <twoerner@gmail.com>
> To: Romain Perier <romain.perier@gmail.com>
> Cc: Jacob Chen <jacob-chen@iotwrt.com>, "yocto@yoctoproject.org" <
> yocto@yoctoproject.org>, Eddie Cai <eddie.cai@rock-chips.com>, Jacob Chen
> <jacob-chen@rock-chips.com>
> Date: Fri, 27 Jan 2017 14:41:32 -0500
> Subject: Re: [meta-rockchip][PATCH 2/7] machine: Add machine file for the
> rk3288 linux Boards
> On Fri, Jan 27, 2017 at 9:37 AM, Romain Perier <romain.perier@gmail.com>
> wrote:
> > Could you:
> > - Make one patch per new machine file and not one patch for all new added
> > machine
>
> Agreed.
>
> Are all of these machines actual devices? The evb one doesn't sound real.
>
> Are all of these machines released and available for purchase? I've
> heard of the tinkerboard (although I can't seem to find one I can
> actually buy) but I haven't heard of the fennec.
>
> > - Add a clear @DESCRIPTION for each board, see an example here:
> > https://git.yoctoproject.org/cgit/cgit.cgi/meta-rockchip/
> tree/conf/machine/firefly-rk3288.conf
> > - Write a clear and an understandable commit message for your new patches
> >
> > @Trevor: What do you think about this rk-linux.inc ? I don't like this,
> > either its name and what it contains.
>
> First off, I think it's really great to see people contributing to
> meta-rockchip! :-)
>
> This entire set of patches seems to be adding "official" support for
> the rockchip devices; in other words, these recipes will help you to
> create builds that use the official rockchip sources. That is great.
> But I think a good BSP gives a user all the possibilities but then
> leaves the final decision up to them.
>
> So I agree with Romain, I think the name could use more work. It would
> be nice if this set of patches included something in the name that let
> the user know these build from official sources. Then the user could
> decide whether they want to use the official rockchip sources, or
> whether they want to build from upstream. So I'm not opposed to the
> idea of adding recipes for official sources, I'd like like to see them
> added in a way that leaves the decision with the user.
>
>
>
> > That's it for now.
> > Thanks for your patches
>
> +1 :-)
>
>

--94eb2c05e90a5e5452054718b753
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Jacob,<br><br></div>gmail bounced this mess=
age back from the &quot;<a href=3D"mailto:jacob-chen@rock-chips.com">jacob-=
chen@rock-chips.com</a>&quot; email address since the mail handler for <a h=
ref=3D"http://rock-chips.com">rock-chips.com</a> said the &quot;jacob-chen&=
quot; user does not exist. We can&#39;t accept a Signed-off-by line that do=
esn&#39;t point to a valid email address. Please adjust your Signed-off-by =
line to point to a real email address.<br><br></div>Best regards,<br></div>=
=C2=A0=C2=A0=C2=A0 Trevor<br><div><div><div><div><div class=3D"gmail_extra"=
><br><div class=3D"gmail_quote">On Fri, Jan 27, 2017 at 2:41 PM, Mail Deliv=
ery Subsystem <span dir=3D"ltr">&lt;<a href=3D"mailto:mailer-daemon@googlem=
ail.com" target=3D"_blank">mailer-daemon@googlemail.com</a>&gt;</span> wrot=
e:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex">




<div>
<table class=3D"m_-6636845184112063877email-wrapper" style=3D"padding-top:3=
2px;background-color:#ffffff" cellspacing=3D"0" cellpadding=3D"0"><tbody>
<tr><td>
<table cellspacing=3D"0" cellpadding=3D"0"><tbody>
<tr><td style=3D"max-width:560px;padding:24px 24px 32px;background-color:#f=
afafa;border:1px solid #e0e0e0;border-radius:2px">
<img style=3D"padding:0 24px 16px 0;float:left" alt=3D"Error Icon" src=3D"c=
id:icon.png" width=3D"72" height=3D"72">
<table style=3D"min-width:272px;padding-top:8px"><tbody>
<tr><td><h2 style=3D"font-size:20px;color:#212121;font-weight:bold;margin:0=
">
Message not delivered
</h2></td></tr>
<tr><td style=3D"padding-top:20px;color:#757575;font-size:16px;font-weight:=
normal;text-align:left">
There was a problem delivering your message to <a style=3D"color:#212121;te=
xt-decoration:none"><b>jacob-chen@rock-chips.com</b></a>. See the technical=
 details below, or try resending in a few minutes.
</td></tr>
</tbody></table>
</td></tr>
</tbody></table>
</td></tr>
<tr style=3D"border:none;background-color:#fff;font-size:12.8px;width:90%">
<td style=3D"padding:48px 10px" align=3D"left">
The response from the remote server was:<br>
<p style=3D"font-family:monospace">
550 jacob-chen@rock-chips.com:user not exist
</p>
</td>
</tr>
</tbody></table>
</div>

<br>Final-Recipient: rfc822; <a href=3D"mailto:jacob-chen@rock-chips.com">j=
acob-chen@rock-chips.com</a><br>
Action: failed<br>
Status: 5.0.0<br>
Remote-MTA: dns; <a href=3D"http://mxwcom.263xmail.com" rel=3D"noreferrer" =
target=3D"_blank">mxwcom.263xmail.com</a>. (38.83.106.84, the server for th=
e domain <a href=3D"http://rock-chips.com" rel=3D"noreferrer" target=3D"_bl=
ank">rock-chips.com</a>.)<br>
Diagnostic-Code: smtp; 550 jacob-chen@rock-chips.com:user not exist<br>
Last-Attempt-Date: Fri, 27 Jan 2017 11:41:36 -0800 (PST)<br>
<br><br>---------- Forwarded message ----------<br>From:=C2=A0Trevor Woerne=
r &lt;<a href=3D"mailto:twoerner@gmail.com">twoerner@gmail.com</a>&gt;<br>T=
o:=C2=A0Romain Perier &lt;<a href=3D"mailto:romain.perier@gmail.com">romain=
.perier@gmail.com</a>&gt;<br>Cc:=C2=A0Jacob Chen &lt;<a href=3D"mailto:jaco=
b-chen@iotwrt.com">jacob-chen@iotwrt.com</a>&gt;, &quot;<a href=3D"mailto:y=
octo@yoctoproject.org">yocto@yoctoproject.org</a>&quot; &lt;<a href=3D"mail=
to:yocto@yoctoproject.org">yocto@yoctoproject.org</a>&gt;, Eddie Cai &lt;<a=
 href=3D"mailto:eddie.cai@rock-chips.com">eddie.cai@rock-chips.com</a>&gt;,=
 Jacob Chen &lt;<a href=3D"mailto:jacob-chen@rock-chips.com">jacob-chen@roc=
k-chips.com</a>&gt;<br>Date:=C2=A0Fri, 27 Jan 2017 14:41:32 -0500<br>Subjec=
t:=C2=A0Re: [meta-rockchip][PATCH 2/7] machine: Add machine file for the rk=
3288 linux Boards<br>On Fri, Jan 27, 2017 at 9:37 AM, Romain Perier &lt;<a =
href=3D"mailto:romain.perier@gmail.com">romain.perier@gmail.com</a>&gt; wro=
te:<br>
&gt; Could you:<br>
&gt; - Make one patch per new machine file and not one patch for all new ad=
ded<br>
&gt; machine<br>
<br>
Agreed.<br>
<br>
Are all of these machines actual devices? The evb one doesn&#39;t sound rea=
l.<br>
<br>
Are all of these machines released and available for purchase? I&#39;ve<br>
heard of the tinkerboard (although I can&#39;t seem to find one I can<br>
actually buy) but I haven&#39;t heard of the fennec.<br>
<br>
&gt; - Add a clear @DESCRIPTION for each board, see an example here:<br>
&gt; <a href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/meta-rockchip/tr=
ee/conf/machine/firefly-rk3288.conf" rel=3D"noreferrer" target=3D"_blank">h=
ttps://git.yoctoproject.org/<wbr>cgit/cgit.cgi/meta-rockchip/<wbr>tree/conf=
/machine/firefly-<wbr>rk3288.conf</a><br>
&gt; - Write a clear and an understandable commit message for your new patc=
hes<br>
&gt;<br>
&gt; @Trevor: What do you think about this rk-linux.inc ? I don&#39;t like =
this,<br>
&gt; either its name and what it contains.<br>
<br>
First off, I think it&#39;s really great to see people contributing to<br>
meta-rockchip! :-)<br>
<br>
This entire set of patches seems to be adding &quot;official&quot; support =
for<br>
the rockchip devices; in other words, these recipes will help you to<br>
create builds that use the official rockchip sources. That is great.<br>
But I think a good BSP gives a user all the possibilities but then<br>
leaves the final decision up to them.<br>
<br>
So I agree with Romain, I think the name could use more work. It would<br>
be nice if this set of patches included something in the name that let<br>
the user know these build from official sources. Then the user could<br>
decide whether they want to use the official rockchip sources, or<br>
whether they want to build from upstream. So I&#39;m not opposed to the<br>
idea of adding recipes for official sources, I&#39;d like like to see them<=
br>
added in a way that leaves the decision with the user.<br>
<br>
<br>
<br>
&gt; That&#39;s it for now.<br>
&gt; Thanks for your patches<br>
<br>
+1 :-)<br>
<br></blockquote></div><br></div></div></div></div></div></div>

--94eb2c05e90a5e5452054718b753--

--94eb2c05e90a5e5454054718b754
Content-Type: image/png; name="icon.png"
Content-Disposition: inline; filename="icon.png"
Content-Transfer-Encoding: base64
Content-ID: <icon.png>
X-Attachment-Id: b90fa2269e1042c9_0.0.1

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
rAArwAoI8X+oIWZkUclG5gAAAABJRU5ErkJggg==

--94eb2c05e90a5e5454054718b754--
