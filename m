Return-Path: <Hollis_Blanchard@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B1EEE003E1
	for <yocto@yoctoproject.org>; Fri, 17 Feb 2012 08:45:26 -0800 (PST)
Received: from svr-orw-fem-01.mgc.mentorg.com ([147.34.98.93])
	by relay1.mentorg.com with esmtp 
	id 1RyQw1-0002uO-R9 from Hollis_Blanchard@mentor.com ;
	Fri, 17 Feb 2012 08:45:25 -0800
Received: from SVR-ORW-FEM-03.mgc.mentorg.com ([147.34.97.39]) by
	svr-orw-fem-01.mgc.mentorg.com over TLS secured channel with
	Microsoft SMTPSVC(6.0.3790.4675); Fri, 17 Feb 2012 08:45:25 -0800
Received: from [172.30.11.144] (147.34.91.1) by svr-orw-fem-03.mgc.mentorg.com
	(147.34.97.39) with Microsoft SMTP Server id 14.1.289.1;
	Fri, 17 Feb 2012 08:45:25 -0800
Message-ID: <4F3E8424.5070306@mentor.com>
Date: Fri, 17 Feb 2012 08:45:24 -0800
From: Hollis Blanchard <hollis_blanchard@mentor.com>
Organization: Mentor Graphics, Embedded Systems Division
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <4F3D6431.70505@mentor.com> <4F3D7F0D.3050904@windriver.com>
	<4F3D883C.8070709@mentor.com> <4F3D8AFD.6080307@windriver.com>
In-Reply-To: <4F3D8AFD.6080307@windriver.com>
X-OriginalArrivalTime: 17 Feb 2012 16:45:25.0833 (UTC)
	FILETIME=[8C655B90:01CCED93]
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
X-List-Received-Date: Fri, 17 Feb 2012 16:45:26 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 02/16/2012 03:02 PM, Bruce Ashfield wrote:
>
> That's the problem. I have a patch that detects this and abort is a non
> bare upstream is used. I just need to send them .. which I'll do when
> I get back to my desk next week.
>
> There are two reason for this bare clone requirement:
>
>   - technical: this scales to several hundred branches. cloning, and 
> iterating
>     remote branches to create local tracking branches is noisy and
>     time consuming. So there's a trick that has been in use for years
>     that you can clone a bare upstream, and mass convert the branches
>     to local in a single operation.
>
>   - social: you want to do your development in a different tree from the
>     one that is being cloned and used. That way the tree is clean, and you 
>
>     are building what you expect. 

One more workflow question: so to test my patch, I need to commit it to 
my real git repo, then push to the bare git repo, then rebuild Poky. 
When I find the inevitable problem, do I need to manually delete (git 
reset --hard) the changeset from both repositories? Is there a better way?

Hollis Blanchard
Mentor Graphics, Embedded Systems Division



