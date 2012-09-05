Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F656E01423
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 10:40:25 -0700 (PDT)
Received: from [192.168.0.2] (host81-153-84-143.range81-153.btcentralplus.com
	[81.153.84.143]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 9CC4D9ADE
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 18:40:24 +0100 (BST)
Message-ID: <50478E87.6080609@r-finger.com>
Date: Wed, 05 Sep 2012 18:40:23 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <OF1A48EC70.8ED5AD8D-ON87257A70.006076C0-85257A70.0060A027@us.ibm.com>
In-Reply-To: <OF1A48EC70.8ED5AD8D-ON87257A70.006076C0-85257A70.0060A027@us.ibm.com>
Subject: Re: core-image-minimal linux kernel version
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
X-List-Received-Date: Wed, 05 Sep 2012 17:40:25 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

On 05/09/12 18:35, James Macon wrote:
> I successfully built core-image-minimal.  I now what to understand how the 
> build determine what linux kernel it will be using because the next step I 
> will want to do is add my own recipe that references my own kernel.  I 
> have not been able to find where the linkage to specific kernel is. Can 
> someone  provide an answer.

The kernel is normally specified in the machine conf file; grep for
PREFERRED_PROVIDER_virtual/kernel.

Tomas

