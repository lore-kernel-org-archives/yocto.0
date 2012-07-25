Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C799BE00280
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2012 03:30:13 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1Styr5-00026f-J8
	for yocto@yoctoproject.org; Wed, 25 Jul 2012 12:30:11 +0200
Received: from 202.80.51.114 ([202.80.51.114])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2012 12:30:11 +0200
Received: from sreekanth.nandakumar by 202.80.51.114 with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2012 12:30:11 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Sree <sreekanth.nandakumar@csr.com>
Date: Wed, 25 Jul 2012 10:20:13 +0000 (UTC)
Message-ID: <loom.20120725T121305-737@post.gmane.org>
References: <CAPhrxTpxKd=UutkKUuU1hcE=JN3nObzh0aot9x=B4EBJPr3oYw@mail.gmail.com>
	<CABcZANm125goVF54Lg4Exy4yaOs8Bevq-sTYcZ1bHy7HViykxA@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 202.80.51.114 (Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1;
	InfoPath.2; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152;
	.NET CLR 3.5.30729; .NET4.0C; .NET4.0E; AskTbWBG/5.15.4.23821))
Subject: Re: Help with configuring Yocto with an external toolchain
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
X-List-Received-Date: Wed, 25 Jul 2012 10:30:14 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Chris Larson <clarson@...> writes:

> 
> On Tue, May 8, 2012 at 2:39 AM, Radha Krishna Srimanthula
> <srimanthula.radhakrishna@...> wrote:
> > I have an armv5tej platform for which I need put in place, a toolchain and 
a
> > build system. It is in this regard that I need some help:
> >
> > Can Yocto use an external toolchain (we use CodeSourcery)? If so, how do I
> > configure Yocto to use the external toolchain? I went through the 
developers
> > and user manuals of Yocto - am not too sure how to go about doing this. Can
> > you please help me with this?
> 
> TCMODE = "external-csl"
> EXTERNAL_TOOLCHAIN = "/path/to/sourcery/toolchain"


Hi

I have added TCMODE?= "external-csl" in local.conf &  EXTERNAL_TOOLCHAIN 
= "/path/to/sourcery/toolchain"(pre-built tool chain) in tcmode-external-
csl.inc i get an error when i try to build.

ERROR: Execution of event handler 'csl_version_handler' failed
Traceback (most recent call last):
  File "csl_version_handler(e)", line 12, in csl_version_handler
(e=<bb.event.ConfigParsed object at 0x87807cc>)
  File "csl-versions.inc", line 4, in csl_get_gdb_version
(d=<bb.data_smart.DataSmart object at 0x8af1e2c>)
NameError: global name 'CmdError' is not defined

Can you let me know how to rectify this error



