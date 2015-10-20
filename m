Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E519AE006EA; Mon, 19 Oct 2015 23:19:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-lb0-f177.google.com (mail-lb0-f177.google.com
	[209.85.217.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1D99E005BB
	for <yocto@yoctoproject.org>; Mon, 19 Oct 2015 23:19:33 -0700 (PDT)
Received: by lbbwb3 with SMTP id wb3so7413373lbb.1
	for <yocto@yoctoproject.org>; Mon, 19 Oct 2015 23:19:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id
	:mail-followup-to:references:mime-version:content-type
	:content-disposition:in-reply-to:organization:user-agent;
	bh=Th2AGAbVJetU48V1cs/HzP8WI3Vcf+ISaaFQEcHhKNc=;
	b=kcinHlb/EzPJyFtDgARwdvXA5wK+o3TAY5y31rri4y+P/gkG4eduTo3k3fAyB950oL
	LGkqdWCM9EhtDrjb0e/NsSBxbq2VPjNOozxniFKbvZ+nqP7NR8dl6iAUquJ4BNMqiioi
	64HH3Ga1QYp3lym1Rcs37Z9qKShT522/V4CnQS+QCVmHPf1mVhgS2kFlMM2u2fEhp+Fu
	jE5/TiZoIauV7rpERYfnAbGCJdap5CaoQ8xgs2qvUrv9qB4qOOtm/TFoELn2kRpY7FwI
	TEDkub/WU/YRLfXn53Sw4LgQMOOqfPuTrtJPEKpqmyxf9U1I7zSvz0XKP72/N/9brpk5
	+nOA==
X-Gm-Message-State: ALoCoQnm5+0qSIh+GqYCI7EtPJfztQWt5EusbmKOPG7Qdvb6xyznPUBr9peZgSZA8a8O1azNG8vu
X-Received: by 10.112.126.70 with SMTP id mw6mr689338lbb.81.1445321970736;
	Mon, 19 Oct 2015 23:19:30 -0700 (PDT)
Received: from ad.chargestorm.se (h83-209-191-235.dynamic.se.alltele.net.
	[83.209.191.235]) by smtp.gmail.com with ESMTPSA id
	um10sm232557lbc.15.2015.10.19.23.19.29
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 19 Oct 2015 23:19:29 -0700 (PDT)
Date: Tue, 20 Oct 2015 08:19:28 +0200
From: Anders Darander <anders@chargestorm.se>
To: atulkumar singh <atul.singh008@gmail.com>
Message-ID: <20151020061928.GB7776@ad.chargestorm.se>
Mail-Followup-To: atulkumar singh <atul.singh008@gmail.com>,
	Martin Jansa <martin.jansa@gmail.com>, yocto@yoctoproject.org
References: <CAH21_vGLfHN=hYHeWNA3Epsf0QPpnOg47NDtE7Do5BsBz+vuFQ@mail.gmail.com>
	<20151019120812.GA2549@jama>
	<CAH21_vFrTWYUkjnTTsH6JCOQqk5R00ABQNhLE80-=CLhib_E7Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAH21_vFrTWYUkjnTTsH6JCOQqk5R00ABQNhLE80-=CLhib_E7Q@mail.gmail.com>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: Nightly build and world build
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
X-List-Received-Date: Tue, 20 Oct 2015 06:19:36 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Please don't top-post. I've reformatted the e-mail in my replly.

* atulkumar singh <atul.singh008@gmail.com> [151020 05:22]:

> On 19-Oct-2015 5:38 pm, "Martin Jansa" <martin.jansa@gmail.com> wrote:

> > On Sat, Oct 17, 2015 at 08:01:59AM +0530, atulkumar singh wrote:
> > > Hi All,

> > > I am going through the mailing list and I found some communication
> related
> > > to world build and nightly build.
> > > I even search in the documentation regarding the same but didn't found
> any
> > > useful information regarding the same.
> > > Can anyone please tel me what is nightly build and world build and what
> is
> > > the difference between the same.

> > My world builds are described here:
> > http://www.openembedded.org/wiki/Bitbake_World_Status

> Thanks for your reply.
> But the link you mentioned has a status of world build for various
> versions, while I am looking for what world build and nightly build meant
> for and what is the difference between them.

Did you notice the Martin not only provided you with the link above, but
also the line below:

> > See link on first line.

If you look at that line, you'll find the following link:
http://www.openembedded.org/wiki/Bitbake_World_Status_Setup, which
basically tells you what the world status builds are doing.

Cheers,
Anders

-- 
Anders Darander
ChargeStorm AB / eStorm AB

