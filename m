Return-Path: <renjithvjn@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF219E00BB7; Tue,  5 Jan 2016 08:15:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (renjithvjn[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0001]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.176 listed in list.dnswl.org]
Received: from mail-yk0-f176.google.com (mail-yk0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF10EE00AE4
	for <yocto@yoctoproject.org>; Tue,  5 Jan 2016 08:15:28 -0800 (PST)
Received: by mail-yk0-f176.google.com with SMTP id v14so193027273ykd.3
	for <yocto@yoctoproject.org>; Tue, 05 Jan 2016 08:15:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=YvRQy2+lzhlseyz54Y7801860QC7m/MI6TP4k8FBEwo=;
	b=un+APqvC/Evo5jUvA2eDQFGkloMDjWZ4E+QWdcguAnT9EMTTiz+KB7bsVJ7NxaTLrM
	hKrglh1YchwiPn/Rfz5klPsid91dBKepkKV0QEJhdGn1I3RfpiwbE+Yefe0Wo+zD+NAG
	d0Vs+sf42l/w22qG3MCmnCQBTaeqst81yarw2FlzdakHWH3W0SJSMPVygT93TOI/QHpC
	ItwO5WK5pyD3QQJsLXr4nhzzs9/CzU4yF14PrCFuTW3xdXAFt2rkEnTrsl/XMAEBMG6g
	McQJTwYkpt2pZE53o9gbPfMI9ECvYWdiA31o1y6KP1ctxnSvGKCWWFGUxSy9XUul/82G
	ShpA==
MIME-Version: 1.0
X-Received: by 10.129.101.198 with SMTP id z189mr34007041ywb.275.1452010527537;
	Tue, 05 Jan 2016 08:15:27 -0800 (PST)
Received: by 10.37.105.7 with HTTP; Tue, 5 Jan 2016 08:15:27 -0800 (PST)
Date: Tue, 5 Jan 2016 21:45:27 +0530
Message-ID: <CAO-QM6PW0Y7d4PQEzs4S9b8NDMRBDuFH5Hc4uR_iQY3NnUhLCQ@mail.gmail.com>
From: Renjith Vijayan <renjithvjn@gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Wed, 06 Jan 2016 08:58:11 -0800
Subject: Rsyslog-IMJournal Package in Yocto
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
X-List-Received-Date: Tue, 05 Jan 2016 16:15:31 -0000
Content-Type: multipart/alternative; boundary=001a114c6d90b445100528988b33

--001a114c6d90b445100528988b33
Content-Type: text/plain; charset=UTF-8

Hi,

I am working on integrating rsyslog's IMJournal module to my yocto based
platform.
I have package_config in my bitbake file for rsyslog as follows,

# first line is default yes in configure
PACKAGECONFIG ??= " \
    zlib rsyslogd rsyslogrt klog inet regexp uuid libgcrypt \
    imdiag gnutls imfile \
    ${@base_contains('DISTRO_FEATURES', 'snmp', 'snmp', '', d)} \
    ${@base_contains('DISTRO_FEATURES', 'systemd', 'systemd', '', d)} \
    ${@base_contains('DISTRO_FEATURES', 'ptest', 'testbench ${VALGRIND}',
'',

But with this configuration, imjournal module is not getting generated
after compilation.

Could someone with prior experience on this point out the package which
needs to be included for imjournal?

Thanks,
Renjith

--001a114c6d90b445100528988b33
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I am working on integrating rsyslog=
&#39;s IMJournal module to my yocto based platform.</div><div>I have packag=
e_config in my bitbake file for rsyslog as follows,</div><div><br></div><di=
v><div># first line is default yes in configure</div><div>PACKAGECONFIG ??=
=3D &quot; \</div><div>=C2=A0 =C2=A0 zlib rsyslogd rsyslogrt klog inet rege=
xp uuid libgcrypt \</div><div>=C2=A0 =C2=A0 imdiag gnutls imfile \</div><di=
v>=C2=A0 =C2=A0 ${@base_contains(&#39;DISTRO_FEATURES&#39;, &#39;snmp&#39;,=
 &#39;snmp&#39;, &#39;&#39;, d)} \</div><div>=C2=A0 =C2=A0 ${@base_contains=
(&#39;DISTRO_FEATURES&#39;, &#39;systemd&#39;, &#39;systemd&#39;, &#39;&#39=
;, d)} \</div><div>=C2=A0 =C2=A0 ${@base_contains(&#39;DISTRO_FEATURES&#39;=
, &#39;ptest&#39;, &#39;testbench ${VALGRIND}&#39;, &#39;&#39;,</div></div>=
<div><br></div><div>But with this configuration, imjournal module is not ge=
tting generated after compilation.</div><div><br></div><div>Could someone w=
ith prior experience on this point out the package which needs to be includ=
ed for imjournal?</div><div><br></div><div>Thanks,</div><div>Renjith</div><=
/div>

--001a114c6d90b445100528988b33--
