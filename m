Return-Path: <jfabernathy@gmail.com>
Received: from mail-qw0-f48.google.com (mail-qw0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC315E0059A
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2012 09:36:18 -0800 (PST)
Received: by qadb15 with SMTP id b15so2631953qad.14
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2012 09:36:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=JQNRj1QIUQVOndVQn/x/nEDBpMHkJ7c3mje2R4S7IWw=;
	b=w/NBSf9EKa9TFZhWUIEj3UrwT1t53Vtt/WBjmMdvRYdYue1W7tzKDGOuUXooLLFGux
	c1qJvAAULKmdW9qmfemWnjBzk0h8W0Cbxpvr7Pl0rRnwMdCeHswTSj3f0fbZHMC5yYq4
	fInLw38c4LJSDRsBcY1rUf1EpaI4zzj01MnNk=
Received: by 10.224.102.8 with SMTP id e8mr563664qao.50.1327512977973;
	Wed, 25 Jan 2012 09:36:17 -0800 (PST)
Received: from [10.0.1.54] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id dm7sm3069654qab.5.2012.01.25.09.36.14
	(version=SSLv3 cipher=OTHER); Wed, 25 Jan 2012 09:36:14 -0800 (PST)
Message-ID: <4F203D8E.3010508@gmail.com>
Date: Wed, 25 Jan 2012 12:36:14 -0500
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111229 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: normal user for Intel BSPs?
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
X-List-Received-Date: Wed, 25 Jan 2012 17:36:19 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I've noticed that the meta-intel BSP come up with the default terminal, 
serial console user, etc. as root.  What would it take to make my own 
BSP that was exactly the same, but the default was a not admin user, but 
you could su or sudo to root?

Jim A

