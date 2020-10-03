Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
 by mx.groups.io with SMTP id smtpd.web12.3169.1601714759958445044
 for <yocto@lists.yoctoproject.org>;
 Sat, 03 Oct 2020 01:46:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmx.net header.s=badeba3b8450 header.b=b4qfc/E0;
 spf=pass (domain: gmx.de, ip: 212.227.17.20, mailfrom: dominic.sacre@gmx.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1601714758;
	bh=v5IjAxZtAfePva8jn67CzKgSBBThthtWpyKhnLRslio=;
	h=X-UI-Sender-Class:From:Subject:To:Date;
	b=b4qfc/E0J/Z2qWyFtZmhKYYjLsRm4r9RsRTD6ap88nrNWbBNNrLhwN9vcjv1pbDzl
	 f50IJagQpOHKUKGGd+SsusCSS1nt5uTrNKLAcD5Vd9ouEb+cQqic9omygwENC1vCKy
	 WfKwAfMnSTp5BW2AwC/B+GrWLU4cS8VCvo37i8VI=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.42.23] ([92.73.48.157]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MQeA2-1k4KsF40Qg-00Nkak for
 <yocto@lists.yoctoproject.org>; Sat, 03 Oct 2020 10:45:58 +0200
From: =?UTF-8?B?RG9taW5pYyBTYWNyw6k=?= <dominic.sacre@gmx.de>
Subject: Timestamps in local time instead of UTC
To: yocto@lists.yoctoproject.org
Message-ID: <1011436f-bc7b-88e8-e78f-798594202c8e@gmx.de>
Date: Sat, 3 Oct 2020 10:43:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:FQoXtRosqKAOrmMEwS8b4PWXq24Pgm0cJRyjCNl+KlG3kNPtVYa
 JPSrbSj+2+usGQCVuIIE+gmqk1oN+Rvc60RmwJDAbC1ektwAN9EPDUg8MlZnwY7R5kJL9o9
 kSfZEUZtngWrKkgeXDSDYmUl3H+Hymm/XlTvDBX+XrEZ7lb3soqpNWRyd/+MDsKQ54za6HY
 kg0+aRMatpmdeakt6IfgQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:oCK0fYWfbYs=:KHNKcnGJsSYgjQyViQziAh
 T5zfVbbNBXJfL9gGS+NZtcLB21BcGRcA/Y1s4IhHO01u6weMNTJbcE0XD+t4pLow6q/bTrPqQ
 uOKfSJUqUpyZn9HgpKQNnw3N51COgPO0BjoUkLNG0nhuIhEyH1K1k3RdqPMUMFvPNLnHosQc1
 xmXrgaSg/6mlhFsOgvY3xcjftrZ1TVQeHfyyZaKo7lihT+eVEk8YMbGStaDmGU7yiH+8RsQ2a
 LIRFSBZ5fcl3A2nERx/nmoHKHedKrpw9CEvoTRj/HmvNBbpzo52cuYGyypo7V99iKU91PueAk
 ERaRcZ4OZl39yd0LwMHCH6fMUdeaqJ2FvkinNpLLj78Fozvm2TD+f08A++amJF+8T0keK80Rd
 iX0GEyiMVrAzr0IPMcO2REOxRqioUMqFxfOAzBXHdnfIPfeonv1WbYkCR0hvWrF8G8F8oBJ2O
 wjfmI0DN+x4b5o+QTi+Vzj7rOGovGJLBRNo62QtsOe+OW6H1wNFc4uNrYDLw7wBea2Qz3JMiH
 CCsh0VLhCd9/0XbSZoOAa6dF0uonV56P1tFUOel/2NZklZC/adVVFVtc+E0SwVN907f/P2Lko
 ptMUTqGuzxihQghSR0FdZTVyuYQ6TIPd4B6m/PmvLTHJKIX79VZI4zKIBP2qK+tcsJmK0qZPO
 6MN3SCFOON6Arj9bW9zpPOWZd34bvZ1PyFa0k/0DVDsgnm8Ml4Twih8vioorBp41/PPJL7XyK
 R7ZjyxzXClP+iNNNramDTNU42uD2Ek2RmrxiQ6OCRWJMMl3g3I2IRkc8ZGkOWeH19w721llMt
 348KM21m1krGbyS44F7iEbnI3bbfEIoyJqBbR6ovvQMtLc4KVjb4yQ+4GOgIZEWfwVEFb/KDy
 roGSu7qiRKkmvrgTfz02itk1mOYPglxtbmiosGt8XlX45KIAYfVYxjxLKhbXZQXRkfCjOtsJE
 kRUcAi95poWmvkXuyyGk4dp4KXYdKTOFpNoLGeFtesstb1unlVIRNsxZDyoN1woWwcbShE9wl
 q+1pxLkZim1IW3+PzG3oc9AstOK+xZsxRU06a9waSMcJvHVS9c8M56T1NgSPa65TYQJR5Zh7c
 /VEcHCvYj3YGFVDQff1UpvF1wxSa+pw60rFTcm0sVwAji6emuutCyih+RxkqJm4l7ZM5cGyWe
 UN+kuGpZxqYPnpvAwtRPU31HgmNBUnH1au5vsslgqeTDz1IyYcAT23Exdso2/rL8PYYSD+ADR
 OcxxF1HtdxgR+Ia0bx3AVoHuWxdEE4Uaiq43CQQ==
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

I'm trying to get my builds to use timestamps in local time rather than
UTC. In order to do that, I've added the following to my local.conf, as
had been suggested on this list before:

DATE :=3D "${@time.strftime('%Y%m%d',time.localtime())}"
TIME :=3D "${@time.strftime('%H%M%S',time.localtime())}"

Now, if I run "bitbake -e", I can see that my setting takes precedence
over Bitbake's default, and all timestamps are in local time.
However, when I actually build a target, all timestamps are still in UTC.

Why doesn't "bitbake -e" reflect the actual environment of the build?
And is there a way to achieve what I'm trying to do?

Thanks,
Dominic
