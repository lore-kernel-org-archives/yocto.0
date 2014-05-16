Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7271CE00B68; Fri, 16 May 2014 05:33:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,RDNS_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (auslands-kv[at]gmx.de)
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from plane.gmane.org (unknown [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 854B3E00975
	for <yocto@yoctoproject.org>; Fri, 16 May 2014 05:33:52 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1WlHKf-00054F-Hl
	for yocto@yoctoproject.org; Fri, 16 May 2014 14:33:49 +0200
Received: from 80-218-32-173.dclient.hispeed.ch ([80.218.32.173])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 16 May 2014 14:33:49 +0200
Received: from auslands-kv by 80-218-32-173.dclient.hispeed.ch with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 16 May 2014 14:33:49 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Neuer User <auslands-kv@gmx.de>
Date: Fri, 16 May 2014 14:33:38 +0200
Message-ID: <ll50j2$f2p$1@ger.gmane.org>
References: <ll4sg1$jb0$1@ger.gmane.org>	<20140516120420.GA3995@ad.chargestorm.se>
	<ll4vid$196$1@ger.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 80-218-32-173.dclient.hispeed.ch
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
In-Reply-To: <ll4vid$196$1@ger.gmane.org>
Subject: Re: Help with building app recipe
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
X-List-Received-Date: Fri, 16 May 2014 12:33:55 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Am 16.05.2014 14:16, schrieb Neuer User:
> Am 16.05.2014 14:04, schrieb Anders Darander:
> 
> Great, that helped with no 1.). Still a lot to learn for me.
> 
> No 2. is still open, though. Is that a problem of my recipe or rather a
> generic problem of the python3 recipe? I could patch the python3 recipe,
> so that it changes the interpreter line to "python3".
> 

Hmm the python3-native recipe has this install function:

----------------------------------------------------------
do_install() {
        install -d ${D}${libdir}/pkgconfig
        oe_runmake 'DESTDIR=${D}' install
        if [ -e ${WORKDIR}/sitecustomize.py ]; then
                install -m 0644 ${WORKDIR}/sitecustomize.py
${D}/${libdir}/python${PYTHON_MAJMIN}
        fi
        install -d ${D}${bindir}/${PN}
        install -m 0755 Parser/pgen ${D}${bindir}/${PN}

        # Make sure we use /usr/bin/env python
        for PYTHSCRIPT in `grep -rIl ${bindir}/${PN}/python
${D}${bindir}/${PN}`; do
                sed -i -e '1s|^#!.*|#!/usr/bin/env python|' $PYTHSCRIPT
        done
}
----------------------------------------------------------


If I change the sed line to "#!/usr/bin/env python3", that would
probably work then. But would it break something else?


