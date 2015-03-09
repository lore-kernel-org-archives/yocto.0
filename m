Return-Path: <alejandro.delcastillo@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5245AE006E9; Mon,  9 Mar 2015 09:15:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=unavailable version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [130.164.80.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1089 seconds by postgrey-1.32 at yocto-www;
	Mon, 09 Mar 2015 09:14:59 PDT
Received: from ni.com (skprod3.natinst.com [130.164.80.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CF8EE003A8
	for <yocto@yoctoproject.org>; Mon,  9 Mar 2015 09:14:59 -0700 (PDT)
Received: from us-aus-mgwout1.amer.corp.natinst.com (nb-chan1-1338.natinst.com
	[130.164.19.134])
	by us-aus-skprod3.natinst.com (8.15.0.59/8.15.0.59) with ESMTP id
	t29Fula9010017; Mon, 9 Mar 2015 10:56:47 -0500
Received: from us-aus-mail3.amer.corp.natinst.com ([130.164.14.198])
	by us-aus-mgwout1.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6)
	with ESMTP id 2015030910564727-178148 ;
	Mon, 9 Mar 2015 10:56:47 -0500 
In-Reply-To: <20150301151454.GA11398@bang.betafive.co.uk>
References: <20150301151454.GA11398@bang.betafive.co.uk>
To: opkg-devel@googlegroups.com,
	Yocto discussion list <yocto@yoctoproject.org>,
	OE Core <openembedded-core@lists.openembedded.org>
MIME-Version: 1.0
X-KeepSent: 19E41FB5:FF382729-86257E03:00532957;
	type=4; flags=0; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.3FP3 Septem 15, 2011
From: Alejandro del Castillo <alejandro.delcastillo@ni.com>
Message-ID: <OF19E41FB5.FF382729-ON86257E03.00532957-86257E03.00579841@ni.com>
Date: Mon, 9 Mar 2015 10:56:47 -0500
X-MIMETrack: Serialize by Router on US-AUS-MAIL3/AUS/M/NIC(Release
	8.5.3FP6|November 21, 2013) at 03/09/2015 10:56:47 AM,
	Serialize complete at 03/09/2015 10:56:47 AM,
	Itemize by SMTP Server on US-AUS-MGWOut1/AUS/H/NIC(Release
	8.5.3FP6|November 21, 2013) at 03/09/2015 10:56:47 AM,
	Serialize by Router on US-AUS-MGWOut1/AUS/H/NIC(Release
	8.5.3FP6|November 21, 2013) at 03/09/2015 10:56:47 AM
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2015-03-09_03:, , signatures=0
X-Mailman-Approved-At: Tue, 10 Mar 2015 08:04:10 -0700
Subject: Re: [opkg-devel] Stepping back from opkg maintenance
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
X-List-Received-Date: Mon, 09 Mar 2015 16:15:01 -0000
Content-Type: text/plain; charset="US-ASCII"

HI Paul,

Thanks for leading the project during the past 18 months. You can tell 
from the features/bug fixes that opkg improved a lot. Regarding the future 
of opkg, I would like to put my name forward to step in and help maintain 
the project. I am really interested in the continued success of it, and 
will like to take a more active role on it. My employer agreed to let me 
spend time maintaining it, which should give me bandwidth to continue the 
work you have been doing. 

I have been following the list for some time now, and have played with the 
code on my own. However, I do need to ramp my knowledge up, which I intend 
to do (probably start tackling some of the defects, and testing of 0.3).

Thanks again for all your hard work,

-Alejandro




From:   Paul Barker <paul@paulbarker.me.uk>
To:     opkg-devel <opkg-devel@googlegroups.com>, 
Cc:     Yocto discussion list <yocto@yoctoproject.org>, OE Core 
<openembedded-core@lists.openembedded.org>
Date:   03/01/2015 09:14 AM
Subject:        [opkg-devel] Stepping back from opkg maintenance
Sent by:        opkg-devel@googlegroups.com



Hi all,

I had a change of circumstances at the beginning of January. Previously I 
was a
full-time PhD student and maintaining opkg was my side project. Now I'm a
full-time software engineer and finishing up my PhD thesis is my side 
project.
I've been trying to find time to fit opkg in there as well but it's just 
not
happening. I had at least hoped that I could get opkg to a v0.3.0 release 
before
I had to step back from opkg development but as I haven't really made any
commits to opkg in 2 months now I don't think it's reasonable to expect 
that
I'll get this done any time soon.

I'll try to keep an eye on the opkg mailing list and contribute with 
answers and
suggestions when I can but I think someone else will have to take over as 
the
maintainer of opkg. I'll do whatever I can to ensure as smooth transition 
if
someone else wants to take up the job of moving opkg forward.

I'd like to thank everyone that's contributed to opkg, whether by sending
patches or just by reporting bugs or making suggestions. I've only been
maintainer for around 18 months but I'd like to think we've made some good
progress in that time and I hope that that can continue forwards under 
someone
else's leadership.

Once I've submitted my PhD thesis I'll hopefully find some time to get 
back
involved with open source projects, whether that's further work on opkg or
getting involved in a different project.

Many thanks again,

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

-- 
You received this message because you are subscribed to the Google Groups 
"opkg-devel" group.
To unsubscribe from this group and stop receiving emails from it, send an 
email to opkg-devel+unsubscribe@googlegroups.com.
For more options, visit https://groups.google.com/d/optout.
[attachment "signature.asc" deleted by Alejandro del Castillo/AUS/NIC] 


