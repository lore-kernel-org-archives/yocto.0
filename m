Return-Path: <idealsim@laposte.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A677E00B67; Mon, 12 Jun 2017 12:51:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (idealsim[at]laposte.net)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [178.22.154.199 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1224 seconds by postgrey-1.32 at yocto-www;
	Mon, 12 Jun 2017 12:51:21 PDT
Received: from smtpoutz2.laposte.net (smtpoutz299.laposte.net [178.22.154.199])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 936D2E00A38
	for <yocto@yoctoproject.org>; Mon, 12 Jun 2017 12:51:21 -0700 (PDT)
Received: from smtpoutz2.laposte.net (localhost [127.0.0.1])
	by lpn-prd-vrout011 (Postfix) with ESMTP id 13F2252BBC0
	for <yocto@yoctoproject.org>; Mon, 12 Jun 2017 21:30:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=laposte.net; s=mail0;
	t=1497295856; bh=CQewxLqdlb14Be3faA1iYvK0mkVFNNv1XKbNKN/TKJY=;
	h=To:From:Subject:Date;
	b=Hnw9R7YvAjYTB2NcLhtV//4nDY9Nb77CRoZaqtIKE3VFu4m+vuaALEBvtwSPCll5z
	1IkJgvRez/wGNUY2T5P158ZF1ij3i4k9/WFWLA0pievMBqXTdlBfmjeUVsdfeKrNix
	lqFezNiRj+SCOKV+pwBbl49GONQ3Y8Eec6ljXLUc/UVUb2e9+5SfH3j52wyGF6v+f4
	/J8Tfl4CNwsKmouURmgUrPtjuF1pjc7Uki9xnwbsSTMfteXy6RVZqdMb+nnlgalfpo
	htcFlPfDcdSK3o6SxX+fJ7+EMFKQqkbjZJr5pC3jagt7S9JIKo9+7qnSQGhZTD9+Qf
	VmBx1AsgKqDWQ==
Received: from smtpoutz2.laposte.net (localhost [127.0.0.1])
	by lpn-prd-vrout011 (Postfix) with ESMTP id 062B552BD3F
	for <yocto@yoctoproject.org>; Mon, 12 Jun 2017 21:30:56 +0200 (CEST)
Received: from lpn-prd-vrin003 (lpn-prd-vrin003.prosodie [10.128.63.4])
	by lpn-prd-vrout011 (Postfix) with ESMTP id 01C4852BBC0
	for <yocto@yoctoproject.org>; Mon, 12 Jun 2017 21:30:56 +0200 (CEST)
Received: from lpn-prd-vrin003 (localhost [127.0.0.1])
	by lpn-prd-vrin003 (Postfix) with ESMTP id E7445493362
	for <yocto@yoctoproject.org>; Mon, 12 Jun 2017 21:30:55 +0200 (CEST)
Received: from [192.168.1.19] (ARennes-654-1-194-199.w86-214.abo.wanadoo.fr
	[86.214.185.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by lpn-prd-vrin003 (Postfix) with ESMTPSA id BC168493305
	for <yocto@yoctoproject.org>; Mon, 12 Jun 2017 21:30:55 +0200 (CEST)
To: Yocto list discussion <yocto@yoctoproject.org>
From: idealsim <idealsim@laposte.net>
Message-ID: <9c70fe71-0365-fcae-2e37-721005c6cf7d@laposte.net>
Date: Mon, 12 Jun 2017 21:30:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
X-VR-SrcIP: 86.214.185.199
X-VR-FullState: 0
X-VR-Score: -100
X-VR-Cause-1: gggruggvucftvghtrhhoucdtuddrfeeljedrjedugddugedtucetufdoteggodetrfdotffvucfrrhho
X-VR-Cause-2: fhhilhgvmecunfetrffquffvgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhht
X-VR-Cause-3: shculddquddttddmnecujfgurhepvffhuffkffgfgggtsegrtderredtfeejnecuhfhrohhmpehiuggv
X-VR-Cause-4: rghlshhimhcuoehiuggvrghlshhimheslhgrphhoshhtvgdrnhgvtheqnecukfhppeekiedrvddugedr
X-VR-Cause-5: udekhedrudelleenucfrrghrrghmpehmohguvgepshhmthhpohhuthdphhgvlhhopegludelvddrudei
X-VR-Cause-6: kedruddrudelngdpihhnvghtpeekiedrvddugedrudekhedrudelledpmhgrihhlfhhrohhmpehiuggv
X-VR-Cause-7: rghlshhimheslhgrphhoshhtvgdrnhgvthdprhgtphhtthhopeihohgtthhoseihohgtthhophhrohhj
X-VR-Cause-8: vggtthdrohhrgh
X-VR-AvState: No
X-VR-State: 0
X-VR-State: 0
Subject: samba create user with password
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
X-List-Received-Date: Mon, 12 Jun 2017 19:51:24 -0000
Content-Type: multipart/alternative;
	boundary="------------5655EA52E30522B0475CBD94"

--------------5655EA52E30522B0475CBD94
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi, i'm trying to configure a samba server from yocto for my card. I 
have a working server (add samba in local.conf), but i would like to add 
the user with password to samba at yocto build step. For this i add this 
recipe (samba_%.bbappend)

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

# Replace default smb.conf file to /etc/samba with my custom
SRC_URI += "file://22-samba-conf.patch"

pkg_postinst_${PN} () {
     smbpasswd -a sambaUser -s
     echo Password
     echo Password
     echo
}

For that i use pkg_postinst () but i don't know if i use it correctly 
(for the moment this won't work) ! At first boot time i need to execute 
/#smbpasswd/ in shell to activate the user in Samba. If someone can help 
to configure it in yocto recipe ?

regards

Mickael


--------------5655EA52E30522B0475CBD94
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p>Hi, i'm trying to configure a samba server from yocto for my
      card. I have a working server (add samba in local.conf), but i
      would like to add the user with password to samba at yocto build
      step. For this i add this recipe (samba_%.bbappend)</p>
    <pre>FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

# Replace default smb.conf file to /etc/samba with my custom
SRC_URI += <a class="moz-txt-link-rfc2396E" href="file://22-samba-conf.patch">"file://22-samba-conf.patch"</a>

pkg_postinst_${PN} () {
    smbpasswd -a sambaUser -s
    echo Password
    echo Password
    echo
}

</pre>
    <p>For that i use pkg_postinst () but i don't know if i use it
      correctly (for the moment this won't work) ! At first boot time i
      need to execute <i>#smbpasswd</i> in shell to activate the user
      in Samba. If someone can help to configure it in yocto recipe ?</p>
    <p>regards</p>
    <p>Mickael<br>
    </p>
  </body>
</html>

--------------5655EA52E30522B0475CBD94--
