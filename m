Return-Path: <jfabernathy@gmail.com>
Received: from mail-qw0-f41.google.com (mail-qw0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB1ECE0131E
	for <yocto@yoctoproject.org>; Sat, 11 Feb 2012 13:23:05 -0800 (PST)
Received: by qadz32 with SMTP id z32so1066082qad.14
	for <yocto@yoctoproject.org>; Sat, 11 Feb 2012 13:23:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=references:user-agent:in-reply-to:mime-version:content-type:subject
	:from:date:to:message-id;
	bh=am1nhdzj0Cr9LvXmS6X4dxFYAfdxctiGwY151mfeLNg=;
	b=TF39nCMPICXdEgXbMfi2OcUMWtRw/VmhtwK5lBTl9M0Vy4itJ4QSiJX6MD69YbnAE+
	C7YnlX3NjV6YypGXiMe5wCVIDz7J/7KLBuYvPja8mA7TSU5VzH31VXC7Qs/WCh+6Yl47
	c5NmjaBrjFcJO/K00u1AuvnWZlYwQ0jte4GCU=
Received: by 10.229.136.193 with SMTP id s1mr6080437qct.18.1328995384827;
	Sat, 11 Feb 2012 13:23:04 -0800 (PST)
Received: from [10.0.1.25] (nc-184-3-50-47.dhcp.embarqhsd.net. [184.3.50.47])
	by mx.google.com with ESMTPS id
	hk9sm22287657qab.20.2012.02.11.13.23.03 (version=SSLv3 cipher=OTHER);
	Sat, 11 Feb 2012 13:23:03 -0800 (PST)
References: <000301cce902$03b60a50$0b221ef0$@sjjmicro.com>
User-Agent: Email for Android
In-Reply-To: <000301cce902$03b60a50$0b221ef0$@sjjmicro.com>
MIME-Version: 1.0
From: Jim Abernathy <jfabernathy@gmail.com>
Date: Sat, 11 Feb 2012 16:23:01 -0500
To: Sean Liming <sean_liming@sjjmicro.com>,yocto@yoctoproject.org
Message-ID: <7fe09045-0102-427d-aac4-4e0e86f693ac@email.android.com>
Subject: Re: Deploy to a hard drive
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
X-List-Received-Date: Sat, 11 Feb 2012 21:23:06 -0000
Content-Type: multipart/alternative;
	boundary="----SWAI1KELR912RXY541QG9OJCOWD561"

------SWAI1KELR912RXY541QG9OJCOWD561
Content-Type: text/plain;
 charset=UTF-8
Content-Transfer-Encoding: 8bit

Need mkdir /mnt/target and mnt/target-ext before step 4

Sent from my Kindle Fire

_____________________________________________
From: Sean Liming <sean_liming@sjjmicro.com>
Sent: Sat Feb 11 16:13:33 EST 2012
To: yocto@yoctoproject.org
Subject: [yocto] Deploy to a hard drive


 

Follow the Wiki instructions:

 

 

1) have a suitable partition on the disk - say partition #3

2) this partition will show up as sde3 on my host machine and sda3 on the atom

3) mkfs.ext3 /dev/sde3

4) mount /dev/sde3 /mnt/target

5) mount -o loop tmp/deploy/images/core-image-sato-sdk.ext3 /mnt/target-text3

6) cp -a /mnt/target-ext3/* /mnt/target

7) grub-install --recheck --root-directory=/mnt/target /dev/sde

 

 

When I do step 4, I get “mount: mount point /mnt/target does not exist”

 

What am I missing?

 

I am using Ubuntu 10.4 LTS 32-bit.

 

Regards,

 

Sean 

 


------SWAI1KELR912RXY541QG9OJCOWD561
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: 8bit

<html xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:w="urn:schemas-microsoft-com:office:word" xmlns:m="http://schemas.microsoft.com/office/2004/12/omml" xmlns="http://www.w3.org/TR/REC-html40"><head><meta http-equiv=Content-Type content="text/html; charset=us-ascii"><meta name=Generator content="Microsoft Word 14 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]--></head><body lang=EN-US link=blue vlink=purple><p>Need mkdir /mnt/target and mnt/target-ext before step 4<br>
</p>

Sent from my Kindle Fire<br><br><div style='font-size:10.0pt;font-family:"Tahoma","sans-serif";padding:3.0pt 0in 0in 0in'>
<hr style='border:none;border-top:solid #B5C4DF 1.0pt'>
<b>From:</b> Sean Liming &lt;sean_liming@sjjmicro.com&gt;<br>
<b>Sent:</b> Sat Feb 11 16:13:33 EST 2012<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] Deploy to a hard drive<br>
</div>
<br>
<div class=WordSection1><p class=MsoNormal><o:p>&nbsp;</o:p></p><p class=MsoNormal>Follow the Wiki instructions:<o:p></o:p></p><p class=MsoNormal><o:p>&nbsp;</o:p></p><p class=MsoNormal><o:p>&nbsp;</o:p></p><p class=MsoNormal>1) have a suitable partition on the disk - say partition #3<o:p></o:p></p><p class=MsoNormal>2) this partition will show up as sde3 on my host machine and sda3 on the atom<o:p></o:p></p><p class=MsoNormal>3) mkfs.ext3 /dev/sde3<o:p></o:p></p><p class=MsoNormal>4) mount /dev/sde3 /mnt/target<o:p></o:p></p><p class=MsoNormal>5) mount -o loop tmp/deploy/images/core-image-sato-sdk.ext3 /mnt/target-text3<o:p></o:p></p><p class=MsoNormal>6) cp -a /mnt/target-ext3/* /mnt/target<o:p></o:p></p><p class=MsoNormal>7) grub-install --recheck --root-directory=/mnt/target /dev/sde<o:p></o:p></p><p class=MsoNormal><o:p>&nbsp;</o:p></p><p class=MsoNormal><o:p>&nbsp;</o:p></p><p class=MsoNormal>When I do step 4, I get &#8220;mount: mount point /mnt/target does not
exist&#8221;<o:p></o:p></p><p class=MsoNormal><o:p>&nbsp;</o:p></p><p class=MsoNormal>What am I missing?<o:p></o:p></p><p class=MsoNormal><o:p>&nbsp;</o:p></p><p class=MsoNormal>I am using Ubuntu 10.4 LTS 32-bit.<o:p></o:p></p><p class=MsoNormal><o:p>&nbsp;</o:p></p><p class=MsoNormal>Regards,<o:p></o:p></p><p class=MsoNormal><o:p>&nbsp;</o:p></p><p class=MsoNormal>Sean <o:p></o:p></p><p class=MsoNormal><o:p>&nbsp;</o:p></p></div></body></html>

------SWAI1KELR912RXY541QG9OJCOWD561--
