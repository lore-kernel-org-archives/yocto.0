Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08DA6E01304
	for <yocto@yoctoproject.org>; Sat, 22 Sep 2012 12:01:48 -0700 (PDT)
Received: by eaan12 with SMTP id n12so736545eaa.35
	for <yocto@yoctoproject.org>; Sat, 22 Sep 2012 12:01:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=ogeLdVzxaUpesEqPLgGnJrG8qRtO97ssAc70jw/pi+M=;
	b=C1wPdZKdfRJ5XbTiiqQ2CxvcCTwp9e4iGggS/hHVaKBdAQfKTqbILxfPz/e5fsx9cP
	bAoMlf1NZkk5D6U1KSVpEe6RXmO+QxS1GW1uzAQnRehsUPURLs9dpmRyf4I/ro5P9VFT
	JtFZLj+xiW6nG6nLRbKUHetfxMm8gPAzC7CXt9wTI81SM4jxe20oMCZHQqxEKHLvTfjY
	Kq2b9bzT65BItT8b9TroXjYl+d1YJxexNMnnUo/5Dvc/bBdQfFIrhq9BFt9Rmc5JoVU2
	obpQ3HAmuGBoAcm2aZS0ZAioL8HqhJF4/bPzN6IsVzsXiZrECO9UQt8NkuWXRdDrWR7y
	4gAg==
Received: by 10.14.202.131 with SMTP id d3mr10081684eeo.32.1348340505733; Sat,
	22 Sep 2012 12:01:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.173.69 with HTTP; Sat, 22 Sep 2012 12:01:15 -0700 (PDT)
In-Reply-To: <CAMAb8ZN9a7Dtn6evFZ-zQn47EBLnR4y=RZ8KNtX=ooMUpHM2uw@mail.gmail.com>
References: <CAMAb8ZN9a7Dtn6evFZ-zQn47EBLnR4y=RZ8KNtX=ooMUpHM2uw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 22 Sep 2012 12:01:15 -0700
Message-ID: <CAMKF1sr5gb1mPrQZLJzSQB9j6rhTEQuBkxrvHgY_YctWN5jHeg@mail.gmail.com>
To: Evade Flow <evadeflow@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: IPK Package name contains illegal characters?
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
X-List-Received-Date: Sat, 22 Sep 2012 19:01:49 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Sep 22, 2012 at 11:35 AM, Evade Flow <evadeflow@gmail.com> wrote:
> /home/evadeflow/projects/poky-git/meta-ivi/recipes-extended/DLT-daemon/DLT-daemon_2.5.2.bb,

rename above to

 /home/evadeflow/projects/poky-git/meta-ivi/recipes-extended/DLT-daemon/dlt-daemon_2.5.2.bb,

