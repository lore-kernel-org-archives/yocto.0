Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BC37E003E2
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2012 14:14:46 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q1GMEeAo029571
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 16 Feb 2012 14:14:40 -0800 (PST)
Received: from [147.11.116.187] (147.11.116.187) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 16 Feb 2012 14:14:40 -0800
Message-ID: <4F3D7FD0.4020107@windriver.com>
Date: Thu, 16 Feb 2012 17:14:40 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.26) Gecko/20120131 Thunderbird/3.1.18
MIME-Version: 1.0
To: Hollis Blanchard <hollis_blanchard@mentor.com>
References: <4F3D6431.70505@mentor.com>	<CAEsOVNfdiouZJ=qvN_GLBoLtJojHvdnXzVUoL674KN1LnNudYQ@mail.gmail.com>	<4F3D760F.6020105@mentor.com>	<CAEsOVNeLEv_C7JY_a7aOW783wVv+JRH=eGikqvpRp4SfcOpg5A@mail.gmail.com>
	<4F3D7DE6.3040805@mentor.com>
In-Reply-To: <4F3D7DE6.3040805@mentor.com>
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: trouble using a local kernel repo
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
X-List-Received-Date: Thu, 16 Feb 2012 22:14:46 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-02-16 05:06 PM, Hollis Blanchard wrote:
> On 02/16/2012 01:43 PM, McClintock Matthew-B29882 wrote:
>> On Thu, Feb 16, 2012 at 9:33 PM, Hollis Blanchard
>> <hollis_blanchard@mentor.com> wrote:
>>> Yeah, I've looked through there, but where should stdout (i.e. those
>>> echo
>>> commands) be appearing?
>> I'd guess it's failing before that... you can add your own echo's.
>> Also, this should be in that log file:
>> tmp/work/${ARCH}/linux-yocto-vZ-rX/temp/log.do_validate.${PID}
>
> Ah ha, it *was* failing before that.
>
> 'git show-ref -s --heads yocto/standard/beagleboard' fails without an
> error message (prints nothing; $? is 1).
>
> On the other hand, 'git show-ref -s --head yocto/standard/beagleboard'
> seems to work (heads vs head). This is git 1.6.0.5.
>
> Of course, this was working fine with the remote git tree -- it's only
> when I switched to my local clone that I ran into problems. I guess that
> means I'm missing "refs/heads", whatever that means... did I somehow
> clone my git tree incorrectly? I did a git clone; git checkout -t
> origin/meta -b meta; git commit.

I just sent a reply with this. We crossed on the 'net. I have changes
to detect and report this, but yes, it would be the clone tripping us
up. I've never seen the heads vs head change, but all my machines are
1.7.x git installs. I'll go have a look at a 1.6 git and see if that
is in fact something to detect and handle.

But since it only happens on your local clone, it really shouldn't be
a git issue .. and is more likely just with the clone.

Bruce

>
> Hollis Blanchard
> Mentor Graphics, Embedded Systems Division
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


