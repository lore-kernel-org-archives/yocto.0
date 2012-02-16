Return-Path: <Hollis_Blanchard@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88B58E003E1
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2012 14:06:31 -0800 (PST)
Received: from svr-orw-exc-10.mgc.mentorg.com ([147.34.98.58])
	by relay1.mentorg.com with esmtp 
	id 1Ry9TD-00062T-8m from Hollis_Blanchard@mentor.com ;
	Thu, 16 Feb 2012 14:06:31 -0800
Received: from SVR-ORW-FEM-03.mgc.mentorg.com ([147.34.97.39]) by
	SVR-ORW-EXC-10.mgc.mentorg.com with Microsoft
	SMTPSVC(6.0.3790.4675); Thu, 16 Feb 2012 14:05:47 -0800
Received: from [172.30.11.144] (147.34.91.1) by svr-orw-fem-03.mgc.mentorg.com
	(147.34.97.39) with Microsoft SMTP Server id 14.1.289.1;
	Thu, 16 Feb 2012 14:06:30 -0800
Message-ID: <4F3D7DE6.3040805@mentor.com>
Date: Thu, 16 Feb 2012 14:06:30 -0800
From: Hollis Blanchard <hollis_blanchard@mentor.com>
Organization: Mentor Graphics, Embedded Systems Division
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: McClintock Matthew-B29882 <B29882@freescale.com>
References: <4F3D6431.70505@mentor.com>
	<CAEsOVNfdiouZJ=qvN_GLBoLtJojHvdnXzVUoL674KN1LnNudYQ@mail.gmail.com>
	<4F3D760F.6020105@mentor.com>
	<CAEsOVNeLEv_C7JY_a7aOW783wVv+JRH=eGikqvpRp4SfcOpg5A@mail.gmail.com>
In-Reply-To: <CAEsOVNeLEv_C7JY_a7aOW783wVv+JRH=eGikqvpRp4SfcOpg5A@mail.gmail.com>
X-OriginalArrivalTime: 16 Feb 2012 22:05:47.0187 (UTC)
	FILETIME=[22CD7830:01CCECF7]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 16 Feb 2012 22:06:31 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 02/16/2012 01:43 PM, McClintock Matthew-B29882 wrote:
> On Thu, Feb 16, 2012 at 9:33 PM, Hollis Blanchard
> <hollis_blanchard@mentor.com>  wrote:
>> Yeah, I've looked through there, but where should stdout (i.e. those echo
>> commands) be appearing?
> I'd guess it's failing before that... you can add your own echo's.
> Also, this should be in that log file:
> tmp/work/${ARCH}/linux-yocto-vZ-rX/temp/log.do_validate.${PID}

Ah ha, it *was* failing before that.

'git show-ref -s --heads yocto/standard/beagleboard' fails without an 
error message (prints nothing; $? is 1).

On the other hand, 'git show-ref -s --head yocto/standard/beagleboard' 
seems to work (heads vs head). This is git 1.6.0.5.

Of course, this was working fine with the remote git tree -- it's only 
when I switched to my local clone that I ran into problems. I guess that 
means I'm missing "refs/heads", whatever that means... did I somehow 
clone my git tree incorrectly? I did a git clone; git checkout -t 
origin/meta -b meta; git commit.

Hollis Blanchard
Mentor Graphics, Embedded Systems Division



