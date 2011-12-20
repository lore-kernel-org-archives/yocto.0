Return-Path: <niqingliang@insigma.com.cn>
Received: from WX-Edge.insigma.com.cn (mx.insigma.com.cn [115.236.48.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1764DE00305
	for <yocto@yoctoproject.org>; Mon, 19 Dec 2011 17:03:35 -0800 (PST)
Received: from WX-EXCHMB2.insigma.com.cn (10.0.1.203) by
	WX-Edge.insigma.com.cn (10.0.1.205) with Microsoft SMTP Server (TLS) id
	8.1.436.0; Tue, 20 Dec 2011 09:03:28 +0800
Received: from [192.168.0.98] (122.224.76.38) by Wx-ExchMB2.insigma.com.cn
	(10.0.1.203) with Microsoft SMTP Server id 8.1.436.0; Tue, 20 Dec 2011
	09:03:25 +0800
Message-ID: <1324342921.1291.5.camel@localhost.localdomain>
From: Ni Qingliang <niqingliang@insigma.com.cn>
To: Joshua Lock <josh@linux.intel.com>
Date: Tue, 20 Dec 2011 09:02:01 +0800
In-Reply-To: <4EEF9037.5090700@linux.intel.com>
References: <CAJV8fDYuV2Hb3jdU25prLoW5-CxFFH0tWvmMUWGfwrqdNJx3+w@mail.gmail.com>
	<4EE132C5.6040007@linux.intel.com>
	<1324284435.1294.150.camel@localhost.localdomain>
	<4EEF9037.5090700@linux.intel.com>
Organization: Insigma
X-Mailer: Evolution 3.2.2 
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: HOB usage
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: niqingliang@insigma.com.cn
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 20 Dec 2011 01:03:37 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

thanks your explanation.

for the navigation problem, maybe we can use nautilus as a reference.
one floating textbox for searching.

I will make further investigate, thanks again.:)

On Tue, 2011-12-20 at 03:27 +0800, Joshua Lock wrote:
> On 19/12/11 00:47, Ni Qingliang wrote:
> > https://niqingliang2003.files.wordpress.com/2011/12/taijitu.png
> > I have wrote a GUI tool for internal use,
> > is it possible to implement thus GUI tool for yocto?
> > the attachement is the UI.
> >
> > every circle represents one package, the arrow between them represents
> > the dependency.
> > indeed, the dependency relation in this tool is defined by custom config
> > file, but I think maybe I can use the relation exported from bitbake, is
> > it possible or easily to implement?
> 
> In short, yes - it's possible to implement such a tool for Yocto.
> 
> BitBake has a dependency viewer GUI already, it uses a set of tables
> rather than a graph of nodes - presumably because the graph is *very*
> large once you get past a trivial build.
> 
> You can play with the depexp by invoking:
> bitbake -g -u depexp some-build-target
> 
> Internally BitBake generates a data structure of the interdependencies
> (the g switch) which by default outputs a graphviz .dot file.
> The -u depexp tells BitBake to instead draw the data structure using the
> depexp GUI (lib/bb/ui/depexp.py).
> 
> Extending this GUI to offer a graph view might be interesting, the
> difficulty will be in helping folks navigate the enormous graph...
> 
> Regards,
> Joshua
> --
> Joshua Lock
>         Yocto Project "Johannes factotum"
>         Intel Open Source Technology Centre

-- 
Yi Qingliang
niqingliang@insigma.com.cn
https://niqingliang2003.wordpress.com


