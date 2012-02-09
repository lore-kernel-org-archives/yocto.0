Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m020-f176.google.com (mail-lpp01m020-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8301EE00307
	for <yocto@yoctoproject.org>; Thu,  9 Feb 2012 06:47:24 -0800 (PST)
Received: by lboi15 with SMTP id i15so1154054lbo.35
	for <yocto@yoctoproject.org>; Thu, 09 Feb 2012 06:47:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=CSV3CuwoqwTveR3nWm/ipYuN88rIU6EM1A6ppMV5Gus=;
	b=Mb3Tz9UiWBjgefu9mtb9vX9MsWnz8zJrW200gZkSIBgr3sdczbHMSsQ1V6Rf9dPoWA
	5H2pRe+ZBKK9LpfX4S6zr5coGO1F1+BKawklk7HyZ37fapz57CIzdBkk4ie0xQbCb5rM
	uS89yOz3kPgELt14xJla4YObvXrJKESlPH6ME=
Received: by 10.152.125.20 with SMTP id mm20mr1389464lab.6.1328798843272; Thu,
	09 Feb 2012 06:47:23 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.5.201 with HTTP; Thu, 9 Feb 2012 06:46:53 -0800 (PST)
In-Reply-To: <F3D9189D-F27C-4C90-AD58-5071F83FA2AF@beagleboard.org>
References: <4F323C52.8030304@intel.com> <20120208100718.GB8335@giant>
	<4F32C595.4040508@linux.intel.com>
	<alpine.DEB.2.00.1202082215320.8688@tvnag.unkk.fr>
	<4F3302D3.7070507@linux.intel.com>
	<F3D9189D-F27C-4C90-AD58-5071F83FA2AF@beagleboard.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 9 Feb 2012 06:46:53 -0800
Message-ID: <CAMKF1soFaYTyYteKMJ7LuiHgpZPzfL-zqz=0f5upXOxKGLVibg@mail.gmail.com>
To: Koen Kooi <koen@beagleboard.org>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: Upstream-Status finally @ 100%
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
X-List-Received-Date: Thu, 09 Feb 2012 14:47:25 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 9, 2012 at 4:22 AM, Koen Kooi <koen@beagleboard.org> wrote:
>
> I find the 'pending' confusing, is it 'pending submission' or 'pending ap=
proval'? I'm marking patches in meta-oe with 'Upstream-status: Unknown' as =
default instead of 'Pending' to make it a bit clearer. And patches marked '=
inappropriate' won't go in, it's 'rejected', 'unknown' or 'needs work' in t=
hose cases. I'm not going to guess what upstream might think of it, since I=
 can't speak for them.
>

there I have seen 'Pending' and 'Submitted' and 'Accepted' which may
be not best wording but explains the status of where the patch is.
Here I think Pending means Pending submission. Umknown would be too
vague.

> All patches in OE-core now have an Upstream-status, but how many have an =
*incorrect* Upstream-status? I suspect only a small percentage, but I think=
 it's worth rethinking the lingo used to be clearer to non-native speakers =
like me.

Yes.

