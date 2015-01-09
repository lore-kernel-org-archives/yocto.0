Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3AA3E00828; Fri,  9 Jan 2015 10:57:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E697E0070B
	for <yocto@yoctoproject.org>; Fri,  9 Jan 2015 10:57:28 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id t09IvRAN021009
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 9 Jan 2015 10:57:27 -0800 (PST)
Received: from Marks-MacBook-Pro.local (172.25.36.231) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.174.1; Fri, 9 Jan 2015 10:57:26 -0800
Message-ID: <54B02496.5070409@windriver.com>
Date: Fri, 9 Jan 2015 12:57:26 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <54B01D64.4000101@mlbassoc.com>
In-Reply-To: <54B01D64.4000101@mlbassoc.com>
Subject: Re: libtool woes
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
X-List-Received-Date: Fri, 09 Jan 2015 18:57:39 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 1/9/15 12:26 PM, Gary Thomas wrote:
> I'm trying to build a recipe which uses libtool.  The problem
> I'm having is that the program uses glib-2.0 and one of the
> libraries from that package has library dependencies.  This
> is giving libtool major troubles.  I get errors like this:
>    | sed: can't read =/usr/lib/libffi.la: No such file or directory
>    | libtool: link: `=/usr/lib/libffi.la' is not a valid libtool archive
> 
> This is coming from libgobject-2.0.la which contains this line:
>    dependency_libs=' =/usr/lib/libglib-2.0.la -lpthread -L=/usr/lib =/usr/lib/libffi.la'
> 
> The odd thing is that my recipe built the last time I tried,
> but admittedly that was in late 2013.
> 
> Any ideas what I might be doing wrong or how to fix this?

The version of libtool you are running doesn't understand cross compilation
(sysroot) paths.  (Sysroot paths start w/ the '='.)  You should use "libtoolize"
prior to running to update the libtool configuration to match the changes that
OE/YP have.  This works in almost all cases.. (where it doesn't work usually
means someone had manually hacked on the previous libtool file...)

--Mark

> Thanks
> 


