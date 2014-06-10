Return-Path: <marlon.smith10@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5FF04E00BAE; Tue, 10 Jun 2014 09:50:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (marlon.smith10[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.170 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f170.google.com (mail-pd0-f170.google.com
	[209.85.192.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FF00E00B83
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 09:50:11 -0700 (PDT)
Received: by mail-pd0-f170.google.com with SMTP id g10so6312097pdj.29
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 09:50:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:subject:from:to:date:in-reply-to:references:content-type
	:mime-version; bh=pezrUvPsVFRl4URYCMRepuIenYWu+eQOnaA4dXtslXE=;
	b=vrpZJFExzlknZIXaUP+OzBfEJvdlvfxFcJ3x8/7wKN29SveUp2TyvagCvjBbux+EKV
	CmNC44NXUan8UhthmCOLugCztpwt5Eg6eczQEq41QzOh3CeMS8YvIYsPcy6X54YF3uTZ
	XzEUeNgKy2QF9hv21Uv1hJUs8vaHpYEYNgr8D6hEsIslZM6ATjOxmROeUMU2F2rDWlsN
	JaAhjrBNwPcAm7Kx3yWyp7iRSLY0CMSALkK/fZ1JiLn3RbCT/IAS4NJbzLTNd75k6lwE
	Uv0V3BLM55NuLijo6Pi29VEngJzKc1SHQS3+f9IZTIq4dPNdUp46Tq5vS2d5Kh8Eg+W1
	7s3A==
X-Received: by 10.68.174.33 with SMTP id bp1mr13171956pbc.74.1402419011146;
	Tue, 10 Jun 2014 09:50:11 -0700 (PDT)
Received: from [192.168.0.10] (S0106602ad07d0544.gv.shawcable.net.
	[184.66.138.43]) by mx.google.com with ESMTPSA id
	zn9sm15541828pac.31.2014.06.10.09.50.10 for <yocto@yoctoproject.org>
	(version=SSLv3 cipher=RC4-SHA bits=128/128);
	Tue, 10 Jun 2014 09:50:10 -0700 (PDT)
Message-ID: <1402419009.2402.4.camel@marlon-Z68X-UD3H-B3>
From: Marlon Smith <marlon.smith10@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 10 Jun 2014 09:50:09 -0700
In-Reply-To: <CAP71Wjy3uBiWuzPgaT7pfAd=rW2qh0R44srPY41GAPG9CMMD2Q@mail.gmail.com>
References: <1402354370.9385.9.camel@marlon-Z68X-UD3H-B3>
	<20140610103736.GC24880@gmail.com>
	<CAALGJZaBFLsX3Knt35fGkvxh0uTz0-TQMZnveQh7paPZ9h438g@mail.gmail.com>
	<539718B9.9030604@mindchasers.com>
	<CAP71Wjy3uBiWuzPgaT7pfAd=rW2qh0R44srPY41GAPG9CMMD2Q@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu1 
Mime-Version: 1.0
Subject: Re: Why use Yocto?
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
X-List-Received-Date: Tue, 10 Jun 2014 16:50:15 -0000
Content-Type: multipart/alternative; boundary="=-UJhv8Mzszgh25rO2N3d5"

--=-UJhv8Mzszgh25rO2N3d5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Wow, thanks everyone for the excellent replies.  I am a developer and
not much of a legal guy, so pointing out the licensing issues with
Ubuntu was especially helpful.

It sounds like we are going to choose Yocto for our product.

On Tue, 2014-06-10 at 17:42 +0200, Nicolas Dechesne wrote:

> On Tue, Jun 10, 2014 at 4:39 PM, Bob Cochran <yocto@mindchasers.com> wrote:
> >
> > How dp you plan to sell/market/license your Ubuntu based machine?
> >
> > Would you become an Ubuntu hardware partner?
> > http://www.ubuntu.com/partners/find-a-partner/hardware
> >
> > The scope of this partnership seems to be servers and desktops.  I assume
> > they also have something in the works for smart phone partners.
> >
> > However, I'm guessing you're building something that doesn't fit these
> > categories.
> >
> > I remember seeing various demo images over the years of Ubuntu running on
> > embedded hardware, but it always seems to fizzle out.  EmbeddedUbuntu on the
> > Ubuntu Wiki was last updated in 2009.
> >
> > But maybe you're talking with people at Canonical and they are telling you
> > something different? If so, please share.
> 
> i guess this is of interest for the discussion (from [1]):
> 
> ===
> 2. Your use of Ubuntu
> 
> You can download, install and receive updates to Ubuntu for free.
> Ubuntu is freely available to all users for personal, or in the case
> of organisations, internal use. It is provided for this use without
> warranty. All implied warranties are disclaimed to the fullest extent
> permitted at law.
> 
> You can modify Ubuntu for personal or internal use.
> You can make changes to Ubuntu for your own personal use or for your
> organisation’s own internal use.
> 
> You can redistribute Ubuntu, but only where there has been no
> modification to it.
> You can redistribute Ubuntu in its unmodified form, complete with the
> installer images and packages provided by Canonical (this includes the
> publication or launch of virtual machine images).
> 
> Any redistribution of modified versions of Ubuntu must be approved,
> certified or provided by Canonical if you are going to associate it
> with the Trademarks. Otherwise you must remove and replace the
> Trademarks and will need to recompile the source code to create your
> own binaries. This does not affect your rights under any open source
> licence applicable to any of the components of Ubuntu. If you need us
> to approve, certify or provide modified versions for redistribution
> you will require a licence agreement from Canonical, for which you may
> be required to pay. For further information, please contact us (as set
> out below).
> ===
> 
> IANAL... but i guess the last paragraph clarifies what you can do (or not).
> 
> [1] http://www.canonical.com/intellectual-property-rights-policy



--=-UJhv8Mzszgh25rO2N3d5
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 7bit

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 TRANSITIONAL//EN">
<HTML>
<HEAD>
  <META HTTP-EQUIV="Content-Type" CONTENT="text/html; CHARSET=UTF-8">
  <META NAME="GENERATOR" CONTENT="GtkHTML/4.6.6">
</HEAD>
<BODY>
Wow, thanks everyone for the excellent replies.&nbsp; I am a developer and not much of a legal guy, so pointing out the licensing issues with Ubuntu was especially helpful.<BR>
<BR>
It sounds like we are going to choose Yocto for our product.<BR>
<BR>
On Tue, 2014-06-10 at 17:42 +0200, Nicolas Dechesne wrote:
<BLOCKQUOTE TYPE=CITE>
<PRE>
On Tue, Jun 10, 2014 at 4:39 PM, Bob Cochran &lt;<A HREF="mailto:yocto@mindchasers.com">yocto@mindchasers.com</A>&gt; wrote:
<FONT COLOR="#737373">&gt;</FONT>
<FONT COLOR="#737373">&gt; How dp you plan to sell/market/license your Ubuntu based machine?</FONT>
<FONT COLOR="#737373">&gt;</FONT>
<FONT COLOR="#737373">&gt; Would you become an Ubuntu hardware partner?</FONT>
<FONT COLOR="#737373">&gt; <A HREF="http://www.ubuntu.com/partners/find-a-partner/hardware">http://www.ubuntu.com/partners/find-a-partner/hardware</A></FONT>
<FONT COLOR="#737373">&gt;</FONT>
<FONT COLOR="#737373">&gt; The scope of this partnership seems to be servers and desktops.  I assume</FONT>
<FONT COLOR="#737373">&gt; they also have something in the works for smart phone partners.</FONT>
<FONT COLOR="#737373">&gt;</FONT>
<FONT COLOR="#737373">&gt; However, I'm guessing you're building something that doesn't fit these</FONT>
<FONT COLOR="#737373">&gt; categories.</FONT>
<FONT COLOR="#737373">&gt;</FONT>
<FONT COLOR="#737373">&gt; I remember seeing various demo images over the years of Ubuntu running on</FONT>
<FONT COLOR="#737373">&gt; embedded hardware, but it always seems to fizzle out.  EmbeddedUbuntu on the</FONT>
<FONT COLOR="#737373">&gt; Ubuntu Wiki was last updated in 2009.</FONT>
<FONT COLOR="#737373">&gt;</FONT>
<FONT COLOR="#737373">&gt; But maybe you're talking with people at Canonical and they are telling you</FONT>
<FONT COLOR="#737373">&gt; something different? If so, please share.</FONT>

i guess this is of interest for the discussion (from [1]):

===
2. Your use of Ubuntu

You can download, install and receive updates to Ubuntu for free.
Ubuntu is freely available to all users for personal, or in the case
of organisations, internal use. It is provided for this use without
warranty. All implied warranties are disclaimed to the fullest extent
permitted at law.

You can modify Ubuntu for personal or internal use.
You can make changes to Ubuntu for your own personal use or for your
organisation&#8217;s own internal use.

You can redistribute Ubuntu, but only where there has been no
modification to it.
You can redistribute Ubuntu in its unmodified form, complete with the
installer images and packages provided by Canonical (this includes the
publication or launch of virtual machine images).

Any redistribution of modified versions of Ubuntu must be approved,
certified or provided by Canonical if you are going to associate it
with the Trademarks. Otherwise you must remove and replace the
Trademarks and will need to recompile the source code to create your
own binaries. This does not affect your rights under any open source
licence applicable to any of the components of Ubuntu. If you need us
to approve, certify or provide modified versions for redistribution
you will require a licence agreement from Canonical, for which you may
be required to pay. For further information, please contact us (as set
out below).
===

IANAL... but i guess the last paragraph clarifies what you can do (or not).

[1] <A HREF="http://www.canonical.com/intellectual-property-rights-policy">http://www.canonical.com/intellectual-property-rights-policy</A>
</PRE>
</BLOCKQUOTE>
<BR>
</BODY>
</HTML>

--=-UJhv8Mzszgh25rO2N3d5--
