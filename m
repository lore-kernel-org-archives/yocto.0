Return-Path: <J.Remmet@phytec.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CADF1E00D1C; Mon, 16 Oct 2017 07:13:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,MSGID_MULTIPLE_AT,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.0 MSGID_MULTIPLE_AT Message-ID contains multiple '@'
	characters
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [217.6.246.34 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 443 seconds by postgrey-1.32 at yocto-www;
	Mon, 16 Oct 2017 07:13:40 PDT
Received: from root.phytec.de (mail.rapiddevelopmentkit.de [217.6.246.34])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C409CE00D14
	for <yocto@yoctoproject.org>; Mon, 16 Oct 2017 07:13:40 -0700 (PDT)
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
	by root.phytec.de (Postfix) with ESMTP id 40B17A0025F;
	Mon, 16 Oct 2017 16:08:05 +0200 (CEST)
Received: from localhost ([172.16.25.229])
	by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
	with ESMTP id 2017101616061594-243462 ;
	Mon, 16 Oct 2017 16:06:15 +0200 
Date: Mon, 16 Oct 2017 16:06:11 +0200
From: Jan Remmet <J.Remmet@phytec.de>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Message-ID: <20171016140610.GA3057@lws-weitzel2@phytec.de>
References: <409F491A08EE44CEBD7605A8195E3C6D@PAULD>
MIME-Version: 1.0
In-Reply-To: <409F491A08EE44CEBD7605A8195E3C6D@PAULD>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
	17, 2016) at 16.10.2017 16:06:15,
	Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17,
	2016) at 16.10.2017 16:06:16,
	Serialize complete at 16.10.2017 16:06:16
X-TNEFEvaluated: 1
Cc: yocto@yoctoproject.org
Subject: Re: Missing /etc/resolv.conf
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Jan Remmet <J.Remmet@phytec.de>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 16 Oct 2017 14:13:41 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Oct 07, 2017 at 12:30:10AM -0700, Paul D. DeRocco wrote:
> (Yocto Pyro, using systemd configured with resolved, networkd, timedated,
> timesyncd)
> 
> /etc/resolv.conf is supposed to be symlinked to
> /run/systemd/resolve/resolv.conf, which gets updated with the DNS address
> received from DHCP, but it's not. Looking through systemd_232.bb, I see
> that do_install() uses sed to edit /usr/lib/tmpfiles.d/etc.conf to set up
> this link. When I run the system, I see that etc.conf does indeed have

I'm missing it too. systemd RDEPENDS on volatile-binds which creates
ln -s /dev/null ${D}${sysconfdir}/tmpfiles.d/etc.conf

so /usr/lib/tmpfiles.d/etc.conf is ignored. I'm not sure where the link
should be created.

Jan

> this edited line, but there is no /etc/resolv.conf.
> systemd-tmpfiles-setup.service runs successfully. Isn't that what's
> supposed to execute all the junk in /usr/lib/tmpfiles.d? All the
> abovementioned servers are running.
> 
> Am I missing something?
> 
> -- 
> 
> Ciao,               Paul D. DeRocco
> Paul                mailto:pderocco@ix.netcom.com
> 
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

