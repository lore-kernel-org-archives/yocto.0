Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ACC19E00A85; Wed, 22 Aug 2018 08:09:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F41D2E00726
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2018 08:09:53 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-10) with ESMTPSA id
	w7MF9hi6027273
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Wed, 22 Aug 2018 16:09:45 +0100
Message-ID: <340e2fcca899a6691605df89eb89f0e7e7802916.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Jack.Fewx@dell.com, jpewhacker@gmail.com, alex.kanavin@gmail.com,
	seebs@seebs.net
Date: Wed, 22 Aug 2018 16:09:43 +0100
In-Reply-To: <0c3dff3db46a4a83a73a4ffe1c83535d@AUSX13MPC104.AMER.DELL.COM>
References: <6a084eda5fcb4423a647bb998471e26d@AUSX13MPC104.AMER.DELL.COM>
	<CANNYZj8A22yL9VU0Wp3OOXwZU6yR=fQXqeWSfKykDp_kkL6ZGQ@mail.gmail.com>
	<6bdfdff49ca04924979eba1da729d7e1@AUSX13MPC104.AMER.DELL.COM>
	<ca06666cf0377fda72a45581f14a2ba48591dc9b.camel@gmail.com>
	<0c3dff3db46a4a83a73a4ffe1c83535d@AUSX13MPC104.AMER.DELL.COM>
X-Mailer: Evolution 3.28.1-2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.100.1 at dan
X-Virus-Status: Clean
Cc: yocto@yoctoproject.org
Subject: Re: [pseudo] Pseudo 1.8+ xattr sqlite corruption
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
X-List-Received-Date: Wed, 22 Aug 2018 15:09:54 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2018-08-22 at 14:54 +0000, Jack.Fewx@dell.com wrote:
> So failure mode is the target filesystem is devoid of SELinux file
> contexts, all files are unlabeled_t, which pretty much breaks
> everything in enforcing mode.  So whatever the corruption
> cause/effect in the Psuedo database, the end result is when
> Mksquashfs runs it can't get labels for the files.
> 
> There is no obvious differences in the pseudo.log files between good
> and bad runs, so it's nothing Pseudo is screaming about.
> 
> I just found the Pseudo debug option flags, and how to insert them
> using FAKEROOTENV += "PSEUDO_DEBUG=Dx", so I'm running builds trying
> to get good and bad ones with the debug logs.

Its not clear if you already tried this but if not, it'd probably be
worth updating pseudo to the latest version too, see if it was some bug
we already addressed in pseudo. I know we've had a few challenges
supporting xattrs in there...

Cheers,

Richard

