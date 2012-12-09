Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E372E006C0
	for <yocto@yoctoproject.org>; Sat,  8 Dec 2012 16:54:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Content-Type:Mime-Version:Subject;
	bh=H+hhTP2QPDsIFbvNeiej48gXcM8nZ9ieLEln6ga1odM=; 
	b=Rlzs3WR1GUN6peu62a53w4i3Cdn2vKB95aaU4RzCrVf1JVkHVEKnJ0DkUwAYzXpSQGsO/L30tcUiGcHcR0ZtuQMsGcXGuaV7VPZb4C7UupybZLkJOJ/Zf2pJDaHrvuWv;
Received: from [109.224.129.17] (port=42620
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>)
	id 1ThV9o-0002Hg-IE; Sun, 09 Dec 2012 00:54:12 +0000
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <CABcZANm7UGMYO1BRK8k9EQdGrDG6w013S-nkQrCgFe5O+4v1SQ@mail.gmail.com>
Date: Sun, 9 Dec 2012 00:54:11 +0000
Message-Id: <58D08629-AD55-4693-8F56-83EA0A52CA77@keylevel.com>
References: <560B845B-ADB9-4244-B82D-8B7136E70F13@keylevel.com>
	<CABcZANm7UGMYO1BRK8k9EQdGrDG6w013S-nkQrCgFe5O+4v1SQ@mail.gmail.com>
To: Chris Larson <clarson@kergoth.com>
X-Mailer: Apple Mail (2.1283)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - r109.websiteservername.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: r109.websiteservername.com: authenticated_id:
	chris.tapp+keylevel.com/only user confirmed/virtual account not
	confirmed
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: bbappending a bbappend
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 09 Dec 2012 00:54:14 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_9A8B6200-2634-4AE9-8F8C-51D1BD8339B5"

--Apple-Mail=_9A8B6200-2634-4AE9-8F8C-51D1BD8339B5
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

On 9 Dec 2012, at 00:11, Chris Larson wrote:

> On Sat, Dec 8, 2012 at 5:07 PM, Chris Tapp <opensource@keylevel.com> =
wrote:
> Is it possible to have more than one bbappend applied to a recipe?
>=20
> I'm using meta-cedartrail with my own layer (which is set as lower =
priority).
>=20
> Meta-cedartrail has a linux-yocto_3.0.bbappend, but I want to be able =
to enable CONFIG_HID_APPLE in my layer so my Apple keyboard works (and =
keep meta-cedartrail 'clean'). Is it possible to use another =
linux-yocto_3.0.bbappend in my layer? I've given it a try, but it's not =
working and I thought it would be an idea to see if it __should__ before =
I try and fix it ;-)
>=20
> All bbappends from all layers are applied, in layer priority order.

Thanks, I was hoping that was the case.

I wonder why this isn't working then - I think I've done it as shown in =
the dev manual...

> --=20
> Christopher Larson

Chris Tapp

opensource@keylevel.com
www.keylevel.com




--Apple-Mail=_9A8B6200-2634-4AE9-8F8C-51D1BD8339B5
Content-Transfer-Encoding: 7bit
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space; "><div><div>On 9 Dec 2012, at 00:11, Chris Larson wrote:</div><br class="Apple-interchange-newline"><blockquote type="cite"><div class="gmail_extra">On Sat, Dec 8, 2012 at 5:07 PM, Chris Tapp <span dir="ltr">&lt;<a href="mailto:opensource@keylevel.com" target="_blank">opensource@keylevel.com</a>&gt;</span> wrote:<br><div class="gmail_quote"><blockquote class="gmail_quote" style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0.8ex; border-left-width: 1px; border-left-color: rgb(204, 204, 204); border-left-style: solid; padding-left: 1ex; position: static; z-index: auto; ">

<div id=":dy">Is it possible to have more than one bbappend applied to a recipe?<br>
<br>
I'm using meta-cedartrail with my own layer (which is set as lower priority).<br>
<br>
Meta-cedartrail has a linux-yocto_3.0.bbappend, but I want to be able to enable CONFIG_HID_APPLE in my layer so my Apple keyboard works (and keep meta-cedartrail 'clean'). Is it possible to use another linux-yocto_3.0.bbappend in my layer? I've given it a try, but it's not working and I thought it would be an idea to see if it __should__ before I try and fix it ;-)</div>

</blockquote></div><br>All bbappends from all layers are applied, in layer priority order.</div></blockquote><div><br></div><div>Thanks, I was hoping that was the case.</div><div><br></div><div>I wonder why this isn't working then - I think I've done it as shown in the dev manual...</div><br><blockquote type="cite"><div class="gmail_extra">-- <br>Christopher Larson<br>
</div>
</blockquote></div><br><div apple-content-edited="true">
<span class="Apple-style-span" style="border-collapse: separate; color: rgb(0, 0, 0); font-family: Helvetica; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium; "><div>Chris Tapp</div><div><br></div><div><a href="mailto:opensource@keylevel.com">opensource@keylevel.com</a></div><div><a href="http://www.keylevel.com">www.keylevel.com</a></div><div><br></div></span><br class="Apple-interchange-newline">
</div>
<br></body></html>

--Apple-Mail=_9A8B6200-2634-4AE9-8F8C-51D1BD8339B5--
