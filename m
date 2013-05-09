Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73A5CE00429
	for <yocto@yoctoproject.org>; Thu,  9 May 2013 08:58:53 -0700 (PDT)
Received: from [192.168.0.2] (host86-137-102-112.range86-137.btcentralplus.com
	[86.137.102.112]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id EB856952B
	for <yocto@yoctoproject.org>; Thu,  9 May 2013 16:58:51 +0100 (BST)
Message-ID: <518BC7BA.70302@r-finger.com>
Date: Thu, 09 May 2013 16:58:50 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CANwz6nzLfczXdCZ6pXRKWqenoJ_cB=cjUTuasPeZfim+Kn2zyA@mail.gmail.com>
In-Reply-To: <CANwz6nzLfczXdCZ6pXRKWqenoJ_cB=cjUTuasPeZfim+Kn2zyA@mail.gmail.com>
Subject: Re: recipe gsl-1.15
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
X-List-Received-Date: Thu, 09 May 2013 15:58:53 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 09/05/13 16:48, Edward Vidal wrote:
> "file://NEWS;beginline=362;endline=363;md5=325d4344063147ef38e3ac2cbf1cc157"

You should be hashing the actual license file, not the NEWS file. Also,
the above is only hashing one line of the file, while your md5 sum is
for the whole file.

Tomas


