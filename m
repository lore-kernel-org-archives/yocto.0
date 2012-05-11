Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C630E00723
	for <yocto@yoctoproject.org>; Fri, 11 May 2012 11:42:00 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q4BIfwlH006037
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 11 May 2012 11:41:58 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 11 May 2012 11:41:58 -0700
Message-ID: <4FAD5D74.3080004@windriver.com>
Date: Fri, 11 May 2012 14:41:56 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
References: <99B4EF8390848E44BF0CFDBD67466FA40ECE86@PGSMSX103.gar.corp.intel.com>
	<D956029D25CF204F948EA0FB515E1EE20ACACD57@ORSMSX105.amr.corp.intel.com>
In-Reply-To: <D956029D25CF204F948EA0FB515E1EE20ACACD57@ORSMSX105.amr.corp.intel.com>
Cc: Yocto Project Discussions <yocto@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Unable to fetch URL from any source
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
X-List-Received-Date: Fri, 11 May 2012 18:42:00 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit

On 12-05-11 01:04 PM, Bodke, Kishore K wrote:
> Yes.
>
> I saw the same failures too.
>
> For some reason 3.0 kernel fetch failures started showing up for Cedartrail.
>
> There is a discussion thread on this in the mailing list.
>
> Bruce might be able to give some pointers on this.

Unfortunately not. From what I hear, it's server issues. Which will be
resolved ASAP.

Cheers,

Bruce

>
> -Kishore.
>
> *From:*yocto-bounces@linux.intel.com
> [mailto:yocto-bounces@linux.intel.com] *On Behalf Of *Chiang, Terence
> *Sent:* Friday, May 11, 2012 3:05 AM
> *To:* Yocto Project Discussions (yocto@linux.intel.com)
> *Subject:* [Yocto] Unable to fetch URL from any source
>
> Hi
>
> While I build the image for cedartrail with “denzil”
>
> With meta-cedartrail and distro = “poky”. the error is following and the
> detail log is attached.
>
> Function failed: Fetcher failure for URL:
> 'git://git.yoctoproject.org/linux-yocto-3.0;protocol=git;bareclone=1;branch=yocto/standard/cedartrail,meta,yocto/pvr;name=machine,meta,pvr'.
> Unable to fetch URL from any source.
>
> Do you encounter similar issue?
>
> /Regard,/
>
> -Terence
>


