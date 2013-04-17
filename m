Return-Path: <hans.beckerus@gmail.com>
Received: from mail-lb0-f182.google.com (mail-lb0-f182.google.com
	[209.85.217.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DA59E01469
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 12:10:41 -0700 (PDT)
Received: by mail-lb0-f182.google.com with SMTP id z13so1920757lbh.41
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 12:10:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:message-id:date:from:user-agent:mime-version:to:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=tS1sHMpRsfMUzXaZSx4/Y0ch/xnd7YrEqufnv1cPw14=;
	b=firVLRFIZ3LzOReA2vKEiq4Ee7pSHU6SMK9QNTo0t4lZ3SuoBmBzupOfEIozAvXNSE
	3sZ3MTFHR305V018x+OfODrwGtaiJJPelVStYoqq0TK6b9U942+xRmRl3wz9t6Vdzpzf
	WCZXbTc+2JUctpi/cJhm0ctnzsucUvQ4m3BmO6bzKolK6/asg44qQPP+EOwaxJY9Wq9G
	Nc1SHmVx3ofNNsmjw2T5KVbovSaXvf+0uHhvcxpfZQbJH48zBUSF9qYrVneVmj5FH652
	a9UiyHHqwy+v8i+dEgV8bpXpJ66DSvBOZocg4q28KxSeUVJrC/Poh7+1cY9PewmJ1dof
	zh6Q==
X-Received: by 10.112.140.1 with SMTP id rc1mr4296988lbb.43.1366225840102;
	Wed, 17 Apr 2013 12:10:40 -0700 (PDT)
Received: from [192.168.0.10] (h135n8-rny-a12.ias.bredband.telia.com.
	[217.209.54.135])
	by mx.google.com with ESMTPS id c7sm3100885lbe.6.2013.04.17.12.10.38
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 17 Apr 2013 12:10:39 -0700 (PDT)
Message-ID: <516EF3AC.8060803@gmail.com>
Date: Wed, 17 Apr 2013 21:10:36 +0200
From: Hans Beckerus <hans.beckerus@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.2;
	rv:17.0) Gecko/20130328 Thunderbird/17.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAFMfyzJJY0hFGXimgdVwzp8i58PnXPnAUyKH_bk9DU25FXVjiw@mail.gmail.com>
	<CAJTo0LbUfNkkgeM9HNN4pE6n-tMyMJY9_4_Ns5BTie91=Qy4HQ@mail.gmail.com>
	<CAFMfyzKZNic47o-x83EZu5ueu7imZE9ZWCtYGsPu+J-0oqE2qQ@mail.gmail.com>
	<CAJTo0LZr0s1tp6V0_3W5odWmCOzyRtU4_E92OL8omtf9GBGTPA@mail.gmail.com>
	<CAFMfyz+F292KQyQBBV7Oyu_q+BAj0F=gBPQqzE6EEDKk347FMQ@mail.gmail.com>
	<CAJTo0Laj1w=q5NSq+zpZufLib8gs2qOKkzQi2syVpjep13ML_Q@mail.gmail.com>
In-Reply-To: <CAJTo0Laj1w=q5NSq+zpZufLib8gs2qOKkzQi2syVpjep13ML_Q@mail.gmail.com>
Subject: Re: Adding prebuilt binaries to /usr/bin on rootfs
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
X-List-Received-Date: Wed, 17 Apr 2013 19:10:42 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-04-17 8:54, Burton, Ross wrote:
> On 17 April 2013 19:10, Satya Swaroop Damarla <swaroop.damarla@gmail.com> wrote:
>> If I dont avoid this error.. I cant build the rootfilesystem....
> Hopefully someone else will respond who knows how to handle that problem.
I do not have a direct answer, but googling this problem seems to give a 
lot of hits, with various answers on how to resolve it.
The common thing seems to be that they all cover binaries compiled from 
within OE/Yocto. In this case I think we are talking pre-built binaries, 
right?
The hash problem could (because I am not sure)  be a combination of the 
compiler being used, linker options and what Yocto expects.
Is it possible for you to recompile your binaries? In that case try to 
add this switch to LDFLAGS (or whatever flags you use to feed the 
linker), --hash-style=gnu. Also see http://lwn.net/Articles/192624/
I might be completely off-target here but take it for what it is ;)

Hans


