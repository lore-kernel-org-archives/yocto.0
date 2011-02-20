Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id EE86E4C80093
	for <yocto@yoctoproject.org>; Sun, 20 Feb 2011 09:04:09 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1KF3tFc002323
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 20 Feb 2011 07:03:55 -0800 (PST)
Received: from Macintosh-5.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Sun, 20 Feb 2011 07:03:55 -0800
Message-ID: <4D612D59.90802@windriver.com>
Date: Sun, 20 Feb 2011 09:03:53 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>
References: <D74F59D1-086C-4C9E-BCBF-550266AC1EDC@keylevel.com>
In-Reply-To: <D74F59D1-086C-4C9E-BCBF-550266AC1EDC@keylevel.com>
X-Originating-IP: [172.25.36.226]
Cc: yocto@yoctoproject.org
Subject: Re: How to reference /usr/include
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
X-List-Received-Date: Sun, 20 Feb 2011 15:04:10 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 2/19/11 6:13 PM, Chris Tapp wrote:
> I'm trying to make a simple recipe that uses libxml. However, the  
> headers for this are in libxlm2/libxml, so I need to add an include  
> path.
> 
> I can get this to work using an absolute path, as shown below:
> 
> do_compile() {
>     ${CC} -I/usr/include/libxml2 helloworld.c -o helloworld
> }

When compiling and using things like above you want to use "-I=/usr/include/libxml2"

The = tells the compiler to use the sysroot prefix as well as what was specified.

Note, NOT ALL VERSIONS OF THE COMPILER SUPPORT THIS!  The version in Yocto does,
and I believe most recent versions of the GNU compiler.

(If no sysroot is defined, say for a host binary "=" simply evaluates to nothing.)

The same syntax is supported for linking, so you can (and should) use
-L=/usr/lib/libfoo.so.  This syntax is much older, so all modern versions of
bintutils support it properly.

> However, this isn't good as it uses /usr. How should I do this? I've  
> tried to find a ${...} to use, but I've not found anything that works.
> 
> Chris Tapp
> 
> opensource@keylevel.com
> www.keylevel.com
> 
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


