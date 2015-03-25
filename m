Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C8C2E008EC; Wed, 25 Mar 2015 06:51:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 520A7E008CE
	for <yocto@yoctoproject.org>; Wed, 25 Mar 2015 06:51:40 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	t2PDpaST014706; Wed, 25 Mar 2015 13:51:36 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id zSVtVktJnVWv; Wed, 25 Mar 2015 13:51:36 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	t2PDpMq4014699
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Wed, 25 Mar 2015 13:51:34 GMT
Message-ID: <1427291482.14020.42.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Vuille, Martin (Martin)" <vmartin@avaya.com>
Date: Wed, 25 Mar 2015 13:51:22 +0000
In-Reply-To: <30C2D590D16A5C46ADFE652191037798538ED580@AZ-US1EXMB03.global.avaya.com>
References: <30C2D590D16A5C46ADFE652191037798538ED24E@AZ-US1EXMB03.global.avaya.com>
	<1427288919.14020.41.camel@linuxfoundation.org>
	<30C2D590D16A5C46ADFE652191037798538ED580@AZ-US1EXMB03.global.avaya.com>
X-Mailer: Evolution 3.12.10-0ubuntu1~14.10.1 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: populate_sysroot and sstate question
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
X-List-Received-Date: Wed, 25 Mar 2015 13:51:45 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2015-03-25 at 13:33 +0000, Vuille, Martin (Martin) wrote:
> > From: Richard Purdie [mailto:richard.purdie@linuxfoundation.org]
> > Sent: March 25, 2015 9:09 AM
> > 
> > On Tue, 2015-03-24 at 22:22 +0000, Vuille, Martin (Martin) wrote:
> > > Is there a better way to suppress populate_sysroot without breaking
> > > setscene?
> > 
> > Define an empty sysroot_stage_dirs function.
> > 
> 
> Thanks Richard, but I still get the same error, see below. Perhaps I misunderstood
> your instructions.
> 
> I did a cleansstate on the package, added the empty function to the recipe
> 
> 	do_populate_sysroot () {
> 	}
> 
> 	sysroot_stage_dirs() {
> 	}

Just define the empty sysroot_stage_dirs, not populate_sysroot. The
stage_dirs function handles copying files so if its empty, no files will
be copied in.

Cheers,

Richard


