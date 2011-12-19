Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E13DFE00305
	for <yocto@yoctoproject.org>; Mon, 19 Dec 2011 11:27:55 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 19 Dec 2011 11:27:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="89199696"
Received: from rmoore1-desk5.amr.corp.intel.com (HELO [10.7.199.156])
	([10.7.199.156])
	by orsmga002.jf.intel.com with ESMTP; 19 Dec 2011 11:27:52 -0800
Message-ID: <4EEF9037.5090700@linux.intel.com>
Date: Mon, 19 Dec 2011 11:27:51 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111115 Thunderbird/8.0
MIME-Version: 1.0
To: niqingliang@insigma.com.cn
References: <CAJV8fDYuV2Hb3jdU25prLoW5-CxFFH0tWvmMUWGfwrqdNJx3+w@mail.gmail.com>
	<4EE132C5.6040007@linux.intel.com>
	<1324284435.1294.150.camel@localhost.localdomain>
In-Reply-To: <1324284435.1294.150.camel@localhost.localdomain>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: HOB usage
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
X-List-Received-Date: Mon, 19 Dec 2011 19:27:56 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 19/12/11 00:47, Ni Qingliang wrote:
> https://niqingliang2003.files.wordpress.com/2011/12/taijitu.png
> I have wrote a GUI tool for internal use, 
> is it possible to implement thus GUI tool for yocto?
> the attachement is the UI.
> 
> every circle represents one package, the arrow between them represents
> the dependency.
> indeed, the dependency relation in this tool is defined by custom config
> file, but I think maybe I can use the relation exported from bitbake, is
> it possible or easily to implement?

In short, yes - it's possible to implement such a tool for Yocto.

BitBake has a dependency viewer GUI already, it uses a set of tables
rather than a graph of nodes - presumably because the graph is *very*
large once you get past a trivial build.

You can play with the depexp by invoking:
bitbake -g -u depexp some-build-target

Internally BitBake generates a data structure of the interdependencies
(the g switch) which by default outputs a graphviz .dot file.
The -u depexp tells BitBake to instead draw the data structure using the
depexp GUI (lib/bb/ui/depexp.py).

Extending this GUI to offer a graph view might be interesting, the
difficulty will be in helping folks navigate the enormous graph...

Regards,
Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre

