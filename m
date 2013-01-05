Return-Path: <raj.khem@gmail.com>
Received: from mail-ye0-f180.google.com (mail-ye0-f180.google.com
	[209.85.213.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 941C3E004D1
	for <yocto@yoctoproject.org>; Fri,  4 Jan 2013 18:52:32 -0800 (PST)
Received: by mail-ye0-f180.google.com with SMTP id m9so2745741yen.39
	for <yocto@yoctoproject.org>; Fri, 04 Jan 2013 18:52:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:message-id:date:from:user-agent:mime-version:to:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=s8xViw8QiWPlUgs0/jy+U0MFPNtx20TypxAxy8bEOuk=;
	b=WI1qqKcMpVHheVL3HCl+2lj/MSwsmhjTl57ZiMwIOYuoj4iKmpzjtvOx+orSLGLCnI
	d9nQlxB0muuTVO67FPkzdPQ2Dmkr1ep2mNkxLkC7nQha8J0Gmhsdbh8zYVUL1VCDetQP
	FtfeLOCZYNgmiisgH6EPK/ciydOquKbKZTfppqyB8H07+ZeGayrxKnrQx69XXQqtcMOO
	vcGsjmZaCoVnNd105IcSPzo3ipTPyx9w+kA5M8ZAR2zIOulXKZmS97IpEfj1zHjxCgMg
	nrw287iKZ4xem/VaMPjrJDV2kYXvQaIc626w+1smjLbyr7XP6jSMGARM7PPxXqqEd1F9
	+O/Q==
X-Received: by 10.236.154.165 with SMTP id h25mr57300952yhk.38.1357354351957; 
	Fri, 04 Jan 2013 18:52:31 -0800 (PST)
Received: from [192.168.1.104] (99-57-140-209.lightspeed.sntcca.sbcglobal.net.
	[99.57.140.209])
	by mx.google.com with ESMTPS id n20sm49967444anl.19.2013.01.04.18.52.30
	(version=SSLv3 cipher=OTHER); Fri, 04 Jan 2013 18:52:31 -0800 (PST)
Message-ID: <50E7956D.10503@gmail.com>
Date: Fri, 04 Jan 2013 18:52:29 -0800
From: Khem Raj <raj.khem@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CD0CD4BB.1C4D8%david.c.stewart@intel.com>
In-Reply-To: <CD0CD4BB.1C4D8%david.c.stewart@intel.com>
Subject: Re: Host authenticity failures
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
X-List-Received-Date: Sat, 05 Jan 2013 02:52:32 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 01/04/2013 06:50 PM, Stewart, David C wrote:
> Is this still a problem?
>
> From: <Thornburg>, Christopher A <christopher.a.thornburg@intel.com<mailto:christopher.a.thornburg@intel.com>>
> Date: Wednesday, January 2, 2013 2:48 PM
> To: "yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>" <yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>>
> Subject: [yocto] Host authenticity failures
>
> I’ve started getting the following error from bitbake when it’s trying to access my git server:
>
> The authenticity of host '[<githost>]:<port>([<IP>]:<port>)' can't be established.
> DSA key fingerprint is <blah>
>
> I understand this error means that the server’s key has probably changed, and I understand in general how to deal with this via SSH config. When I manually ssh’d to the server the first time after receiving the error, I got the same message, as expected. I entered “yes” and tried again to verify that the error went away. It did. I think ran bitbake again and got the same error. I changed my ~/.ssh/ssh_config file to disable StrictHostKeyChecking and still get the error.
>
> Is bitbake somehow using different known_hosts and ssh_config files from the ones I use for interactive logins? Other ideas on how to resolve this?
>

bitbake is not hosted on yp dot org but on oe dot org



