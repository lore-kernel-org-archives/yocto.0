Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 39DA24C8086E
	for <yocto@yoctoproject.org>; Sun, 20 Feb 2011 11:46:45 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1KHkYvt019122
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 20 Feb 2011 09:46:34 -0800 (PST)
Received: from Macintosh-5.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Sun, 20 Feb 2011 09:46:34 -0800
Message-ID: <4D615378.6040305@windriver.com>
Date: Sun, 20 Feb 2011 11:46:32 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>
References: <466E08F0-1ADF-4618-A7DA-B6390C7AC2A9@keylevel.com>
	<4D612A83.7040302@windriver.com>
	<72C3267D-6313-42A0-A105-A288B7576F53@keylevel.com>
	<4D61353D.9040808@windriver.com>
	<B241782A-FB38-4B44-B931-19337F2D7359@keylevel.com>
In-Reply-To: <B241782A-FB38-4B44-B931-19337F2D7359@keylevel.com>
X-Originating-IP: [172.25.36.226]
Cc: yocto@yoctoproject.org
Subject: Re: What builds 'netbase'?
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
X-List-Received-Date: Sun, 20 Feb 2011 17:46:45 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 2/20/11 9:50 AM, Chris Tapp wrote:
> On 20 Feb 2011, at 15:37, Mark Hatle wrote:
> 
>> To me it looks like it deleted exactly what you asked it to.  All of  
>> the
>> sstate-netbase-* files, and the downloaded netbase_4.41.tar.gz.
> 
> It's not that easy to see when the lines get mangled. Below are the  
> ends of the 'ls' and 'cleanall' names for _populate_sysroot.
> 
> sstate: -7422fec9d26be091358f8e930110bf37_populate-sysroot.tgz  
> (existing file after build)
> NOTE:   -4c81cdca2e1c8da43ee609321b93895f_populate-sysroot.tgz  
> (cleanall delete target)
> 
> Doesn't this show that the wrong one was targeted for deletion?

No, the md5sum is the signature of the recipe.  If the signature changes, it
should avoid the sstate-cache and rebuild.  If it's still pulling in the version
from the sstate, even though the signature changed.. this could indicate a problem.

(Any time you change the recipe or referenced files in the recipe the signature
should be changing...  this won't trigger a rebuild though until you do a
bitbake -c clean ...  It will recompute the signature, see it doesn't match the
sstate and build...)

--Mark

>> For the latest changes in master, we've got planned a bit more  
>> control then
>> simply "clean" and "cleanall", but I don't believe it's implemented  
>> yet.
> 
> That sounds interesting. For example, it would be nice to be able to  
> clean everything except the download (useful when working off-line).
> 
> Chris
> 
> 


