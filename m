Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8C3BE0086E; Fri,  9 Jan 2015 05:42:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,PLING_QUERY
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 PLING_QUERY Subject has exclamation mark and question mark
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF254E004D6
	for <yocto@yoctoproject.org>; Fri,  9 Jan 2015 05:42:38 -0800 (PST)
Received: from [70.30.87.145] (port=56724 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Y9Zpk-0004zR-TI
	for yocto@yoctoproject.org; Fri, 09 Jan 2015 08:42:36 -0500
Date: Fri, 9 Jan 2015 08:42:35 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Yocto discussion list <yocto@yoctoproject.org>
In-Reply-To: <alpine.LFD.2.11.1501090835420.12531@localhost>
Message-ID: <alpine.LFD.2.11.1501090841280.12821@localhost>
References: <alpine.LFD.2.11.1501090835420.12531@localhost>
User-Agent: Alpine 2.11 (LFD 23 2013-08-11)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: Re: do pkg_postinst() scripts need to start with "#!/bin/sh -e"?
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
X-List-Received-Date: Fri, 09 Jan 2015 13:42:50 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 9 Jan 2015, Robert P. J. Day wrote:

>
>   more manual pedantry -- dev manual, section 5.3.16, suggests:
>
>  A post-installation function has the following structure:
>
>      pkg_postinst_PACKAGENAME() {
>      #!/bin/sh -e
>      # Commands to carry out
>      }
>
> except that every example of a pkg_postinst() script i've ever seen
> does not contain that initial hash-bang line, so the manual should
> at least be reworded to be consistent with the code base.

  i take it back, i just ran across this example in base-passwd.bb:

pkg_postinst_${PN}-update () {
#!/bin/sh
if [ -n "$D" ]; then
        exit 0
fi
${sbindir}/update-passwd
}

which (naturally) doesn't use the "-e" option :-). anyway, what does
one suggest for consistency across the manual and code base?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

