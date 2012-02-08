Return-Path: <bjst@giant.haxx.se>
Received: from giant.haxx.se (giant.haxx.se [80.67.6.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87FFDE01370
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2012 02:07:22 -0800 (PST)
Received: from giant.haxx.se (localhost.localdomain [127.0.0.1])
	by giant.haxx.se (8.14.4/8.14.4/Debian-2) with ESMTP id q18A7JRq016770
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT)
	for <yocto@yoctoproject.org>; Wed, 8 Feb 2012 11:07:19 +0100
Received: (from bjst@localhost)
	by giant.haxx.se (8.14.4/8.14.4/Submit) id q18A7IEr016769
	for yocto@yoctoproject.org; Wed, 8 Feb 2012 11:07:18 +0100
Date: Wed, 8 Feb 2012 11:07:18 +0100
From: =?iso-8859-1?Q?Bj=F6rn?= Stenberg <bjst@enea.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>
Message-ID: <20120208100718.GB8335@giant>
References: <4F323C52.8030304@intel.com>
MIME-Version: 1.0
In-Reply-To: <4F323C52.8030304@intel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Mailman-Approved-At: Wed, 08 Feb 2012 10:45:43 -0800
Subject: Re: Upstream-Status finally @ 100%
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
X-List-Received-Date: Wed, 08 Feb 2012 10:07:23 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Saul Wold wrote:
> After getting some final patches yesterday, we made it to 100% with
> patch Upsteam-Status.

Who sets the Upstream-Status? Are there guidelines how to do it?

I spoke to the author of curl and mentioned the two patches in Yocto against it, both of which are marked as "Upstream-Status: Inappropriate". He said those patches were never submitted to him.

Are we dismissing patches without even giving upstream a chance to comment?

-- 
Björn

