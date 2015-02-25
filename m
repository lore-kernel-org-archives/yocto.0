Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D5B7E0076F; Wed, 25 Feb 2015 01:57:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [195.74.38.224 listed in list.dnswl.org]
Received: from bin-vsp-out-04.atm.binero.net (vsp-authed01.binero.net
	[195.74.38.224])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBD5AE0074C
	for <yocto@yoctoproject.org>; Wed, 25 Feb 2015 01:56:59 -0800 (PST)
X-Halon-ID: a2561b8d-bcd4-11e4-9ec3-005056917c0c
Authorized-sender: petter@technux.se
Received: from webmail.binero.se (unknown [195.74.38.9])
	by bin-vsp-out-04.atm.binero.net (Halon Mail Gateway) with ESMTPA;
	Wed, 25 Feb 2015 10:56:57 +0100 (CET)
MIME-Version: 1.0
Date: Wed, 25 Feb 2015 10:56:55 +0100
From: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
To: "Burton, Ross" <ross.burton@intel.com>
Organization: Technux
Mail-Reply-To: <petter@technux.se>
In-Reply-To: <CAJTo0Lbb_jQjTC_C9Mu6QJvcHmSpmW46v4waG2vOcfRkL_WYTA@mail.gmail.com>
References: <1407931139-4286-1-git-send-email-sujith.h@gmail.com>
	<b94b4f53e118cc42e827d035d2640560@technux.se>
	<CAJTo0Lbb_jQjTC_C9Mu6QJvcHmSpmW46v4waG2vOcfRkL_WYTA@mail.gmail.com>
Message-ID: <583772add270be8bde19bbd775a659f7@technux.se>
X-Sender: petter@technux.se
User-Agent: Binero Webmail/0.8.4
Cc: yocto@yoctoproject.org
Subject: Re: [psplash][PATCH] Adding support for systemd and its service files
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: petter@technux.se
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 25 Feb 2015 09:57:07 -0000
Content-Type: multipart/alternative;
	boundary="=_21c85623455cd1917005a8d1097c01d7"

--=_21c85623455cd1917005a8d1097c01d7
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=UTF-8

 

Hi Ross, 

Thanks for this info. I will give the patch a spin and
let you know about the result. 

BR Petter 

2015-02-23 14:43 skrev
Burton, Ross: 

> Hi Petter, 
> 
> On 22 February 2015 at 21:20, Petter
Mabäcker <petter@technux.se> wrote:
> 
>> Anyone who knows what happened
with this change? Any problem detected? I was looking into adding
support for systemd in psplash and found this old changeset that is not
included in the psplash repo yet.
> 
> I dropped the ball on testing it.
Last time I looked systemd pretty much assumed that plymouth was being
used. If you can verify that this patch set is right, then that's
awesome. 
> 
> Ross
 

--=_21c85623455cd1917005a8d1097c01d7
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html><body style=3D'font-family: Helvetica,Arial,sans-serif'>
<p>Hi Ross,</p>
<p>Thanks for this info. I will give the patch a spin and let you know abou=
t the result.</p>
<p>BR Petter</p>
<p>2015-02-23 14:43 skrev Burton, Ross:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%"><!-- html ignored --><!-- head ignore=
d --><!-- meta ignored -->
<div dir=3D"ltr">
<div class=3D"gmail_extra">Hi Petter,</div>
<div class=3D"gmail_extra"><br />
<div class=3D"gmail_quote">On 22 February 2015 at 21:20, Petter Mab&auml;ck=
er <span>&lt;<a href=3D"mailto:petter@technux.se">petter@technux.se</a>&gt;=
</span> wrote:<br />
<blockquote class=3D"gmail_quote" style=3D"margin: 0  0  0  .8ex; border-le=
ft: 1px  #ccc  solid; padding-left: 1ex;">
<p>Anyone who knows what happened with this change? Any problem detected? I=
 was looking into adding support for systemd in psplash and found this old =
changeset that is not included in the psplash repo yet.</p>
<p>&nbsp;</p>
</blockquote>
</div>
<br />I dropped the ball on testing it.&nbsp; Last time I looked systemd pr=
etty much assumed that plymouth was being used.&nbsp; If you can verify tha=
t this patch set is right, then that's awesome.</div>
<div class=3D"gmail_extra">&nbsp;</div>
<div class=3D"gmail_extra">Ross</div>
</div>
</blockquote>
</body></html>

--=_21c85623455cd1917005a8d1097c01d7--
