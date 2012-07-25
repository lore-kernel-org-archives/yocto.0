Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47D50E004AB
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2012 09:59:45 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id q6PGxhm3027869
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2012 09:59:43 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (172.25.34.30) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Wed, 25 Jul 2012 09:59:43 -0700
Message-ID: <501025FE.6060005@windriver.com>
Date: Wed, 25 Jul 2012 11:59:42 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:14.0) Gecko/20120713 Thunderbird/14.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <alpine.DEB.2.02.1207241719300.4602@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A4550D@ORSMSX101.amr.corp.intel.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A46603@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A46603@ORSMSX101.amr.corp.intel.com>
Subject: Re: does a BSP layer *require* a README file?
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
X-List-Received-Date: Wed, 25 Jul 2012 16:59:45 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 7/25/12 11:46 AM, Rifenbark, Scott M wrote:
> Here is some more information on this topic.  All layers are not BSP layers (i.e the meta-tlk layer is not a BSP).  Regarding the real question as to whether a BSP layer *must* have a README file to be considered Yocto-compliant, I have been told that it does need the file.

The compliance document indicates that all layers must contain a README that 
specifies a minimum set of information.

"all layers contain a README file which details the origin of the layer, its 
maintainer, where to submit changes, and any dependencies or version requirements"

The BSP document may require additional information as well.  I found what I 
think is good example of this type of README file in:
   http://git.yoctoproject.org/cgit.cgi/meta-baryon/tree/README

--Mark

> Scott
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Rifenbark, Scott M
> Sent: Wednesday, July 25, 2012 8:00 AM
> To: Robert P. J. Day; Yocto discussion list
> Subject: Re: [yocto] does a BSP layer *require* a README file?
>
> There recently was a concern that we document the requirements of a BSP layer so that it could be considered Yocto-compliant.  The BSP guide does lay out the "must" word in that new section where it talks about the README File.  Is it really required?  Opinions?
>
> Scott
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
> Sent: Tuesday, July 24, 2012 2:22 PM
> To: Yocto discussion list
> Subject: [yocto] does a BSP layer *require* a README file?
>
>
>    currently, the BSP guide seems quite adamant that a BSP layer *must*
> have a top-level README file, but at least a couple of the meta-intel
> sublayers (meta-tlk, meta-n450) have no such file.  so should that
> alleged requirement be, you know, dropped?
>
> rday
>


