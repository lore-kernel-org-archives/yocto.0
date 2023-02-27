Return-Path: <konstantin.kletschke@inside-m2m.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1E8F4C7EE30
	for <webhook@archiver.kernel.org>; Mon, 27 Feb 2023 13:46:03 +0000 (UTC)
Received: from mail.inside-m2m.de (mail.inside-m2m.de [188.68.57.244])
 by mx.groups.io with SMTP id smtpd.web11.90203.1677505553287665897
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Feb 2023 05:45:54 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@inside-m2m.de header.s=dkim header.b=K86VmQpd;
 spf=pass (domain: inside-m2m.de, ip: 188.68.57.244, mailfrom: konstantin.kletschke@inside-m2m.de)
Received: from Hephaistos.inside-m2m.de (business-90-187-159-109.pool2.vodafone-ip.de [90.187.159.109])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id 2ECCB4002F;
	Mon, 27 Feb 2023 14:45:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=inside-m2m.de;
	s=dkim; t=1677505548;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CN8qQ5FnV4eA1CXrOepTLFbk7p68ez1/D5yCkqL245o=;
	b=K86VmQpdEq6PWeVEKVrmBYbOw/VT8lHvM33tNMq6Rl29RoZs0JWQeXoQ7mUBz8OLP+/Xnc
	jccxJZ27gOEkkUjbGDQ1/trlc8J4PdG36w6JNwUgUxk7/7s+LEw80KyDANpgy1U4CPb0w2
	z7ZcVWrTRctfI+jH+22aTCRezXaCYEI=
Date: Mon, 27 Feb 2023 14:45:46 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: "Chen, Qi" <Qi.Chen@windriver.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Setup a static IP address - systemd
Message-ID: <Y/y0CpY7s02Fw34P@Hephaistos.inside-m2m.de>
References: <Y/yCR/KJI6NNyimz@Hephaistos.inside-m2m.de>
 <CO6PR11MB56021FCB6DCA1BDB44568C33EDAF9@CO6PR11MB5602.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
In-Reply-To: <CO6PR11MB56021FCB6DCA1BDB44568C33EDAF9@CO6PR11MB5602.namprd11.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Feb 2023 13:46:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59308

On Mon, Feb 27, 2023 at 01:28:13PM +0000, Chen, Qi wrote:
> I think you're having a higher priority configuration file taking effec=
t.
> Check /lib/systemd/network and /run/systemd/network.
> Maybe renaming your configuration file to 00-eth0.network would solve t=
he problem.

Yes indeed. I am searching the web for ages for this, my colleauge also
found out within a couple of minutes :-|

Renaming the file having an additional prefix like "10-" works like a cha=
rme.
I suspect the number has to be lower than the 80 found in many files in
/lib/systemd/network...

Thanks for your provided solution, many thanks!

Kind Regards
Konstantin





--=20
INSIDE M2M GmbH
Konstantin Kletschke
Berenbosteler Stra=DFe 76 B
30823 Garbsen

Telefon: +49 (0) 5137 90950136
Mobil: +49 (0) 151 15256238
Fax: +49 (0) 5137 9095010

konstantin.kletschke@inside-m2m.de
http://www.inside-m2m.de=20

Gesch=E4ftsf=FChrung: Michael Emmert, Derek Uhlig
HRB: 111204, AG Hannover


