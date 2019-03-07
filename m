Return-Path: <sscott@san.rr.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EEC7CE00C43; Thu,  7 Mar 2019 08:04:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [107.14.166.226 listed in list.dnswl.org]
X-Greylist: delayed 60 seconds by postgrey-1.32 at yocto-www;
	Thu, 07 Mar 2019 08:04:15 PST
Received: from cdptpa-cmomta03.email.rr.com (cdptpa-outbound-snat.email.rr.com
	[107.14.166.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 269B3E00AD5
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2019 08:04:15 -0800 (PST)
Received: from boobie ([75.80.138.87]) by cmsmtp with ESMTP
	id 1vUFhiL2Xk8iv1vUIhyeDw; Thu, 07 Mar 2019 16:03:14 +0000
From: "Steve Scott" <sscott@san.rr.com>
To: <yocto@yoctoproject.org>
References: <MWHPR21MB07666F341A64E2B2553E5927E5740@MWHPR21MB0766.namprd21.prod.outlook.com>
	<MWHPR21MB076694812B1F6F66A7805392E5730@MWHPR21MB0766.namprd21.prod.outlook.com>
In-Reply-To: <MWHPR21MB076694812B1F6F66A7805392E5730@MWHPR21MB0766.namprd21.prod.outlook.com>
Date: Thu, 7 Mar 2019 08:03:17 -0800
Message-ID: <007001d4d4ff$491a33f0$db4e9bd0$@san.rr.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQCKsK60U3lxeq44Ef5lYdEKnS1nGgJN1TECqIIstsA=
X-CMAE-Envelope: MS4wfAKW8Oqj5XjExg1cvQLq0Qzug3C2olHjNM+eG1vX3uwmMVJlZXhOC+M1+8KoJlhWmTCN+/7fdOvEgq0LWKRvcFyYLh0NPumVKTvk5URpkX9OR3tSAATF
	IN8ne5y3UjJEGTLN/+NeOLvKv5zK/1YnLAxEVF9ufWZsqf8V4suONCeO
Subject: Re: SRC_URI when there is a local mirror but no remote repo
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: sscott@san.rr.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 07 Mar 2019 16:04:16 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: en-us

SRC_URI = "file://${TOPDIR}/../local_mirror/example-1.0.0.src.tar.gz" should
work, without need for do_unpack.

What error are you getting?

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Edmund Nadolski
> Sent: Wednesday, March 06, 2019 11:52 AM
> To: Edmund Nadolski <Edmund.Nadolski@microsoft.com>;
> yocto@yoctoproject.org
> Subject: Re: [yocto] SRC_URI when there is a local mirror but no remote
repo
> 
> Friendly ping, any thoughts on this?
> 
> One thing I have noted - without the remote url, bitbake will not link the
file
> into DL_DIR or create a *.done file for it.
> 
> TIA,
> Ed
> 
> > -----Original Message-----
> > From: yocto-bounces@yoctoproject.org <yocto-
> bounces@yoctoproject.org>
> > On Behalf Of Edmund Nadolski
> > Sent: Wednesday, February 27, 2019 3:00 PM
> > To: yocto@yoctoproject.org
> > Subject: [yocto] SRC_URI when there is a local mirror but no remote
> > repo
> >
> > Hi,
> >
> > Does Yocto/Bitbake support a way to set SRC_URI in a recipe when there
> > is no corresponding upstream remote (git://, https://, etc.) for a
*.tar.gz
> file?
> > IOW, I've configured for own_mirrors and set BB_NO_NETWORK=1, and
> my
> > *.tar.gz file only lives in the local_mirror directory.
> >
> > It looks to me like file:// thinks that the file always lives under
${S}.
> >
> > TIA,
> > Ed
> >
> > ...
> > # functional workaround
> > SRC_URI = " http://some.example.com/example-1.0.0.src.tar.gz"
> > ...
> >
> > do_unpack () {
> >         # Unpack straight from the local mirror since there is no remote
> >         tar xzf ${TOPDIR}/../local_mirror/example-1.0.0.src.tar.gz -C
> > ${S}
> >
> > do_install () {
> >         install -d ${D}/${MY_DIR}
> >         install -m 0744 ${S}/example/example.sh ${D}/${MY_DIR}
> >
> > --
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


