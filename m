Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8DB7A4C80287
	for <yocto@yoctoproject.org>; Fri, 19 Nov 2010 06:25:49 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn6 with SMTP id 6so1743794iwn.35
	for <yocto@yoctoproject.org>; Fri, 19 Nov 2010 04:25:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type;
	bh=H6kjIzqwR/b0UNaYmYkdCiGDllgesFRI0qSO6r4WwxQ=;
	b=MqrWF40b60ZUX6ncut29XB+pdx/vZd0q/T6QAeeqUnhq7Qd7V0iJt8sxjJ5Ua/5VYu
	jf8mpRvuofmmY9pPL7GRyHSnVqGQkFp/N6vzSHkny93c+Cfvsnskmq607oUi75NJvbXJ
	/dsA4SZRECH/A6DjG/XstsGrb7sNasJ/mnxeE=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=przdCNRwu+eHGrDFiE6ATkb2eO4xhlog0dU0Gtl/odky9ytc7Sgqgrfymh9k/oPcGH
	J5bc4BS7Hm4UoLY5L/EzkIrvP8E6hhshJ3ua9xUyGrJtISHC5B4xJRPCoXUfgh21aqT7
	EuMN87BKha8HQ+zfSnLpmZBg6B7nxxSOPOs9A=
MIME-Version: 1.0
Received: by 10.231.37.201 with SMTP id y9mr1911333ibd.76.1290169548396; Fri,
	19 Nov 2010 04:25:48 -0800 (PST)
Received: by 10.231.33.4 with HTTP; Fri, 19 Nov 2010 04:25:48 -0800 (PST)
In-Reply-To: <1290168327.1272.12243.camel@rex>
References: <AANLkTim9rqmdOZf2bHwuqbkJRMAnWP4sFj11S1LPtUbG@mail.gmail.com>
	<625BA99ED14B2D499DC4E29D8138F1504D3667EC0C@shsmsx502.ccr.corp.intel.com>
	<AANLkTim+W1qVYXnbJ448oNmOhCGTU=e2UX33RZebcN=r@mail.gmail.com>
	<1290168327.1272.12243.camel@rex>
Date: Fri, 19 Nov 2010 13:25:48 +0100
Message-ID: <AANLkTikWN=UW1J_sM3+peOfh1KhD8DHboN4gGzU1nDkf@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: Richard Purdie <rpurdie@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: inc files in recipes
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
X-List-Received-Date: Fri, 19 Nov 2010 12:25:49 -0000
Content-Type: text/plain; charset=ISO-8859-1

2010/11/19 Richard Purdie <rpurdie@linux.intel.com>:
> On Fri, 2010-11-19 at 10:42 +0100, Frans Meulenbroeks wrote:
>> 2010/11/19 Tian, Kevin <kevin.tian@intel.com>:

>>
>> The same also holds if you want to keep two versions because they are
>> e.g. functionwise very different.
>> Sometimes this is already done (at least in OE, there we have e.g
>> libsigc++-1.2 and libsigc++-2.0 and apache and apache2 directories,
>> also sometimes there are differently named recipes (different PN) in
>> the same folder, e.g. bluez and bluez4)
>
> Having them in the same directory doesn't cause any complications and
> using the same names means that creation of a GPLv3 image is much
> simpler which is why we didn't rename the recipes.

True, but it slightly increases the risk that the v2 recipe gets
accidently removed because someone thinks it is old.
Of course for OE due to the fact that there are a lot of people with
commit rights there

Frans

