Return-Path: <dean@ripperd.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85830E0076F; Tue,  3 Feb 2015 11:42:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [96.114.154.161 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from resqmta-po-02v.sys.comcast.net (resqmta-po-02v.sys.comcast.net
	[96.114.154.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94A32E005B4
	for <yocto@yoctoproject.org>; Tue,  3 Feb 2015 11:42:11 -0800 (PST)
Received: from resomta-po-18v.sys.comcast.net ([96.114.154.242])
	by resqmta-po-02v.sys.comcast.net with comcast
	id nvgt1p0035E3ZMc01viBtf; Tue, 03 Feb 2015 19:42:11 +0000
Received: from mail.ripperd.com ([76.17.232.85])
	by resomta-po-18v.sys.comcast.net with comcast
	id nvi91p00T1rCZNL01viAiT; Tue, 03 Feb 2015 19:42:11 +0000
Received: from [10.0.1.6] (unknown [10.0.1.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.ripperd.com (Postfix) with ESMTPSA id 2A2D2663AE;
	Tue,  3 Feb 2015 13:42:09 -0600 (CST)
Message-ID: <54D12490.90503@ripperd.com>
Date: Tue, 03 Feb 2015 13:42:08 -0600
From: Dean <dean@ripperd.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <BAY169-W273E3222BFC4F033CF313EAE3D0@phx.gbl>
	<54D10341.2090300@ripperd.com>
	<3808650.TK1iGa17XP@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <3808650.TK1iGa17XP@peggleto-mobl5.ger.corp.intel.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=q20140121; t=1422992531;
	bh=2KlRnkHEuYvqHgKhOPaRSe5XP0A8EtLPa0Q07oeIY+A=;
	h=Received:Received:Received:Message-ID:Date:From:MIME-Version:To:
	Subject:Content-Type;
	b=R0IQkPcQUnQh42HRJ0Rsffs+htBzjsNoDkcAuALZGqR++1rvuzx1dVkfPJQFkDf6n
	JQ3WUimN4y6AnaVJLl1jtPaf6b+MOP0BcxMPa699sb1nC1RnAAAb0qPDgyeyMPBP+m
	4hfiy+n+erm1YMEYVaAuelh9Sbk1fKDg71xGGzwJTNPndPoPhVOL5DQ5XQGMtVczhm
	IOMbxUfcPXoumm2l/ShJ5SEpY03zT6aIrlsMlz3AEgkZrF7OqPLTf9/PAC3LGtKXMm
	10HIt1E+EbJvifWy/vo0YfM97qc6xj/+JZMP815pgqgzBBELGEB+jae4iwh5Fidyjx
	OatYTaOJGZt8g==
Cc: yocto@yoctoproject.org
Subject: Re: DNS nameservers in Yocto
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
X-List-Received-Date: Tue, 03 Feb 2015 19:42:17 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit


On 2/3/2015 12:11 PM, Paul Eggleton wrote:
> Hi Dean,
>
> On Tuesday 03 February 2015 11:20:01 Dean wrote:
>> On 2/3/2015 9:43 AM, Jim Abernathy wrote:
>>> I find that for Static IPs, I have to manually add my DNS name servers
>>> to /etc/resolv.conf instead of what I'm use to and that's put the line
>>> in /etc/network/interfaces with the dns-nameserver [IP] [IP].
>>>
>>> My knowledge base comes from Ubuntu Server where putting everything in
>>> "/etc/network/interfaces" covers most things.
>>>
>>> Anyone know why?
>> Add resolvconf to your image.
>>
>> That being said, I'm using dora and the package there was very
>> incomplete. I had to add quite a bit in a .bbappend to make it work
>> properly.
> Would the issues you found have been fixed by this commit?
>
>    http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=35e0a3eb6725781eb291b3fa90694a68c3b64c60
>
> If not, we should really try to get these fixed in the original recipe - we'd
> certainly appreciate help there.
>
> Cheers,
> Paul
>

Yeah, that's about 95% of it. I don't think it has a service yet though?

Here is my .bbappend. It probably isn't perfect or bug free, but working 
on my dora builds. I think I ripped the scripts out of the debian 
packages and then fixed anything necessary to make them work with busybox.

cat resolvconf_1.74.bbappend
# Added by Dean to fix issues in resolvconf recipe

# look for files in this layer first
FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += " file://fixpath.patch \
          file://resolvconf.init \
          file://netresolvconfdown \
          file://netresolvconfup \
          file://pppresolvconfdown \
          file://pppresolvconfup "

inherit update-rc.d

INITSCRIPT_NAME = "resolvconf"
INITSCRIPT_PARAMS = "start 39 S . stop 41 0 6 ."

# add list-records script, its missing in distro
# add volatile resolv.conf - package maintainer didnt??!@?!
# Add startup/shutdown script
FILES_${PN} += " /lib/resolvconf/list-records "
do_install_append () {
     install -d ${D}/lib/${BPN}
     install -m 0755 bin/list-records ${D}/lib/${BPN}/

     echo "l root root 0644 /etc/resolv.conf 
${sysconfdir}/${BPN}/run/resolv.conf" >> 
${D}${sysconfdir}/default/volatiles/99_resolvconf
     echo "f root root 0644 ${sysconfdir}/${BPN}/run/resolv.conf none" 
           >> ${D}${sysconfdir}/default/volatiles/99_resolvconf

     install -d ${D}${sysconfdir}/init.d
     cp ${WORKDIR}/resolvconf.init ${WORKDIR}/resolvconf
     install -m 0755 ${WORKDIR}/resolvconf ${D}${sysconfdir}/init.d/

# Add things needed for interfaces coming up and down
     install -d ${D}${sysconfdir}/network/if-down.d/
     install -d ${D}${sysconfdir}/network/if-up.d/
     install -d ${D}${sysconfdir}/ppp/ip-down.d/
     install -d ${D}${sysconfdir}/ppp/ip-up.d/
     install -m 0755 ${WORKDIR}/netresolvconfdown 
${D}${sysconfdir}/network/if-down.d/resolvconf
     install -m 0755 ${WORKDIR}/netresolvconfup 
${D}${sysconfdir}/network/if-up.d/000resolvconf
     install -m 0755 ${WORKDIR}/pppresolvconfdown 
${D}${sysconfdir}/ppp/ip-down.d/000resolvconf
     install -m 0755 ${WORKDIR}/pppresolvconfup 
${D}${sysconfdir}/ppp/ip-up.d/000resolvconf

}

