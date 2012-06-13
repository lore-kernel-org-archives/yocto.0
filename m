Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD963E01304
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2012 23:46:11 -0700 (PDT)
Received: from [192.168.0.2] (host86-170-73-80.range86-170.btcentralplus.com
	[86.170.73.80]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 01AFD9C07
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2012 07:46:10 +0100 (BST)
Message-ID: <4FD83731.4010800@r-finger.com>
Date: Wed, 13 Jun 2012 07:46:09 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.3) Gecko/20120329 Icedove/10.0.3
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4F7C1F1F.4070806@r-finger.com>
	<CAC+thW1Vah3pUPH=CNcQCH=C4QEj2RY17DX+tDHGd_MuCsxViQ@mail.gmail.com>
	<4F7C438D.5020800@windriver.com> <4F7C5651.60209@mlbassoc.com>
	<4F7D2E45.2020408@r-finger.com>
	<loom.20120613T005341-535@post.gmane.org>
	<CADkTA4NZ_Z81-AhvQww4tiY3d0qjE1Ryyes_BuCGJFfGwQ3bew@mail.gmail.com>
	<CAGV0yjPO-roFgDxEY8J6Zo0THAOCHNgf1dTEzPHuAR-sc3h58w@mail.gmail.com>
	<CADkTA4OASbns5iwu2m7ECa6C2BANteT3+qOKizxHEEef0iaCzA@mail.gmail.com>
In-Reply-To: <CADkTA4OASbns5iwu2m7ECa6C2BANteT3+qOKizxHEEef0iaCzA@mail.gmail.com>
Subject: Re: Not booting on BeagleBoard xM 0x2
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
X-List-Received-Date: Wed, 13 Jun 2012 06:46:12 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 13/06/12 03:34, Bruce Ashfield wrote:
> On Tue, Jun 12, 2012 at 7:38 PM, Ryan Julian <ryanjulian@berkeley.edu> wrote:
>> Hi Bruce,
>>
>> The build I'm using already includes Denys' patch.
>>
>> I was referring to Tomas' original problem, in which the MMC card
>> successfully initialized, but the kernel still panics while trying to mount
>> mmcblk0p2. These two seem unrelated, unless I'm mistaken.
> 
> The two issues that we worked with ended up both being resolved by the preempt
> disable patch. Both stemmed from the MMC card not being recognized, and that
> was due to in kernel preemption.

IIRC, both of these went away with a kernel update, but I am now using a
kernel from meta-ti, so I can't verify that.

Tomas

