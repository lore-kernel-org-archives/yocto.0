Return-Path: <seth.boll@gmail.com>
Received: from mail-ie0-f179.google.com (mail-ie0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 841ACE0155B
	for <yocto@yoctoproject.org>; Mon,  3 Jun 2013 18:47:46 -0700 (PDT)
Received: by mail-ie0-f179.google.com with SMTP id c13so933194ieb.38
	for <yocto@yoctoproject.org>; Mon, 03 Jun 2013 18:47:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type;
	bh=tFuTdqmQTUiqm8mhhJW4KquUv0zPkYI3Mf/+o6NWbtY=;
	b=s/LGm8Du9heFKUAPgQkfmdwEduHuRl75kY/jR8914ZiW1QUgJIZG6vKH4Srjdl0goB
	yNTDBWOua/IlMWru05kDQiWLK+SDyWD4FZ5gu3/bLiYAxRefjx3iGk9D8jmGsihYDnQg
	T2/MU4a06SN+uE4fK8fw3sdKf1VS9qlOjzDxak6InU1yFdMzwrPqNRDVkAuvwQOUuLNm
	WQuU6ODI1KHwcyahd3k0Ho8tC5mRJVx8VwA3Qz/Kown8KUPk1olExrp2bdiQX3uuT01R
	d38Sp6iQ4zXQzn7CNgSscWkhmtotc9VvtgMwfcCxnZkndjLADVNcCEejKUH+tZJBCFsi
	+XXw==
X-Received: by 10.42.203.68 with SMTP id fh4mr11866862icb.36.1370310465872;
	Mon, 03 Jun 2013 18:47:45 -0700 (PDT)
Received: from [192.168.1.102] (c-66-41-191-40.hsd1.mn.comcast.net.
	[66.41.191.40])
	by mx.google.com with ESMTPSA id d9sm22214203igr.4.2013.06.03.18.47.44
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 03 Jun 2013 18:47:45 -0700 (PDT)
Message-ID: <51AD4740.3060700@gmail.com>
Date: Mon, 03 Jun 2013 20:47:44 -0500
From: seth bollinger <seth.boll@gmail.com>
User-Agent: Postbox 3.0.8 (Macintosh/20130427)
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <CA+JN8xP3hNL6qmi=pDJRHAnp-3d_e2Z-=2sKncUxMq2jrRAS9Q@mail.gmail.com>
	<1979845.55KWpAQeV6@helios>
In-Reply-To: <1979845.55KWpAQeV6@helios>
Cc: yocto@yoctoproject.org
Subject: Re: opkg list-installed is empty
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
X-List-Received-Date: Tue, 04 Jun 2013 01:47:46 -0000
X-Groupsio-MsgNum: 14074
Content-Type: multipart/alternative;
	boundary="------------070705000501010706070102"

--------------070705000501010706070102
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


> Paul Eggleton <mailto:paul.eggleton@linux.intel.com>
> June 3, 2013 7:10 47AM
> Hi Seth,
>
> If /var/lib/opkg is empty in your image, it can only be because its 
> contents
> have been deleted; and that could be either because the value of
> IMAGE_FEATURES doesn't end up containing package-management, or 
> alternatively
> remove_packaging_data_files is being added manually to
> ROOTFS_POSTPROCESS_COMMAND (as core-image-minimal does). I'd suggest 
> using
> bitbake -e your-image | less and looking at the values of 
> IMAGE_FEATURES and
> ROOTFS_POSTPROCESS_COMMAND to see what's really going on.
>
> Cheers,
> Paul
>
Thanks Paul!  As usual, you nailed it.  I missed the 
ROOTFS_POSTPROCESS_COMMAND that I pulled in when I copied 
core-image-minimal.

Seth


--------------070705000501010706070102
Content-Type: multipart/related;
 boundary="------------010109050908060409090801"

--------------010109050908060409090801
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html><head>
<meta content="text/html; charset=ISO-8859-1" http-equiv="Content-Type">
</head><body text="#000000" bgcolor="#FFFFFF"><br>
<blockquote style="border: 0px none;" 
cite="mid:1979845.55KWpAQeV6@helios" type="cite">
  <div style="margin:30px 25px 10px 25px;" class="__pbConvHr"><div 
style="display:table;width:100%;border-top:1px solid 
#EDEEF0;padding-top:5px"> 	<div 
style="display:table-cell;vertical-align:middle;padding-right:6px;"><img
 photoaddress="paul.eggleton@linux.intel.com" photoname="Paul Eggleton" 
src="cid:part1.04030409.00070503@gmail.com" 
name="compose-unknown-contact.jpg" width="25px" height="25px"></div>   <div
 
style="display:table-cell;white-space:nowrap;vertical-align:middle;width:100%">
   	<a moz-do-not-send="true" 
href="mailto:paul.eggleton@linux.intel.com" style="color:#737F92 
!important;padding-right:6px;font-weight:bold;text-decoration:none 
!important;">Paul Eggleton</a></div>   <div 
style="display:table-cell;white-space:nowrap;vertical-align:middle;">   
  <font color="#9FA2A5"><span style="padding-left:6px">June 3, 2013 7:10
 47AM</span></font></div></div></div>
  <div style="color:#888888;margin-left:24px;margin-right:24px;" 
__pbrmquotes="true" class="__pbConvBody"><div>Hi Seth,<br></div><div><!----><br>If
 /var/lib/opkg is empty in your image, it can only be because its 
contents <br>have been deleted; and that could be either because the 
value of <br>IMAGE_FEATURES doesn't end up containing 
package-management, or alternatively <br>remove_packaging_data_files is 
being added manually to <br>ROOTFS_POSTPROCESS_COMMAND (as 
core-image-minimal does). I'd suggest using <br>bitbake -e your-image | 
less and looking at the values of IMAGE_FEATURES and <br>ROOTFS_POSTPROCESS_COMMAND
 to see what's really going on.<br><br>Cheers,<br>Paul<br><br></div></div>
</blockquote>
Thanks Paul!&nbsp; As usual, you nailed it.&nbsp; I missed the 
ROOTFS_POSTPROCESS_COMMAND that I pulled in when I copied 
core-image-minimal.<br>
<br>
Seth<br>
<br>
</body></html>

--------------010109050908060409090801
Content-Type: image/jpeg; x-apple-mail-type=stationery;
 name="compose-unknown-contact.jpg"
Content-Transfer-Encoding: base64
Content-ID: <part1.04030409.00070503@gmail.com>
Content-Disposition: inline;
 filename="compose-unknown-contact.jpg"

/9j/4AAQSkZJRgABAQEARwBHAAD/2wBDAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEB
AQEBAQICAQECAQEBAgICAgICAgICAQICAgICAgICAgL/2wBDAQEBAQEBAQEBAQECAQEBAgICAgIC
AgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgL/wAARCAAZABkDAREA
AhEBAxEB/8QAGAAAAwEBAAAAAAAAAAAAAAAABgcICQr/xAA0EAABAwMCAgcECwAAAAAAAAACAQME
AAUGERITIQcUIjEyQnYIFRa1FzY3UVRWkZOV0tP/xAAZAQEAAwEBAAAAAAAAAAAAAAADAAEEAgX/
xAAoEQACAQEFBwUAAAAAAAAAAAAAAQIRAxIhgbETMTJBUXGhM0JSctH/2gAMAwEAAhEDEQA/AO4T
H8fx64Y9j1wuGPY/cbhcMfsc+fPuNitU+dOmzbVDlS5UuZMim4+8chxwlUiXxcuWiU6ilgjOAMvK
cHj3N+O30eYzJt8d8mDnt2PHkfc4Rq286xC906ON9kturwqaeUdaRWNd+LzZxtX8V4/BqQcawyYk
N9nFsUONL6u60+zjdmZImH9pg6063BE2yVstUIVQk7+S6Uco0vZ9RE68vBEv0g5x+a79/JSf9Kso
tfEF1xHEvS2OJ+llhJVLdm9SE0zoUiDPm25QJ2VHnPxBFsVUpDvHIGOGPm4m9tR+/iJWkzlVWKIV
tt9mgOEJnAh2+IZjyAiissskQa+XQazz92ZogqXUZyVCFVfH0yDYMfs1lbabeg45j8eZPeFJJBJS
zQTdjRmPCJBu2mrmuh7g4aKO6u4w64IOUnVpAC8b8p5+TIM3ZEl433XlRBM3nS3E52BRBXd3aIiJ
ryREpQxn430jXJqZGiX5WpcWRJYYS47Woj8MnnBaByRs2tOR0LbuVEbIUIi1PTbRygqMRTfPEk3q
Uz8JJ/Yd/pRiCO9oD7aekf1Any2BS2fpw7PVhWnHLuJ+uzgIMS+tuJ+qMd+cwqqXDP6y0ZDeCsB6
B//Z

--------------010109050908060409090801--

--------------070705000501010706070102--
