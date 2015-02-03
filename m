Return-Path: <dean@ripperd.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62013E0076F; Tue,  3 Feb 2015 09:21:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [96.114.154.171 listed in list.dnswl.org]
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Tue, 03 Feb 2015 09:21:06 PST
Received: from resqmta-po-12v.sys.comcast.net (resqmta-po-12v.sys.comcast.net
	[96.114.154.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FF86E005B4
	for <yocto@yoctoproject.org>; Tue,  3 Feb 2015 09:21:06 -0800 (PST)
Received: from resomta-po-17v.sys.comcast.net ([96.114.154.241])
	by resqmta-po-12v.sys.comcast.net with comcast
	id ntKv1p0025Clt1L01tL3N8; Tue, 03 Feb 2015 17:20:03 +0000
Received: from mail.ripperd.com ([76.17.232.85])
	by resomta-po-17v.sys.comcast.net with comcast
	id ntL21p00S1rCZNL01tL3fB; Tue, 03 Feb 2015 17:20:03 +0000
Received: from [10.0.1.6] (unknown [10.0.1.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.ripperd.com (Postfix) with ESMTPSA id E1F61663AE;
	Tue,  3 Feb 2015 11:20:01 -0600 (CST)
Message-ID: <54D10341.2090300@ripperd.com>
Date: Tue, 03 Feb 2015 11:20:01 -0600
From: Dean <dean@ripperd.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Jim Abernathy <jfabernathy@outlook.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <BAY169-W273E3222BFC4F033CF313EAE3D0@phx.gbl>
In-Reply-To: <BAY169-W273E3222BFC4F033CF313EAE3D0@phx.gbl>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=q20140121; t=1422984003;
	bh=CCskGB2HVPZuYywVhnoBi287MwutPWSZQXKE/DJgTlw=;
	h=Received:Received:Received:Message-ID:Date:From:MIME-Version:To:
	Subject:Content-Type;
	b=DONwsC/8alNfUT+kzlHDVMLuiqDKZ5dQlnWLho59P+Aqv81JHn2mXvKiVb7jRCAzm
	bPPQsTDxA35y9AtAy+fNrqCMWgEX85bASjSj/xcGa3ZdJd25EybzBBpURPfAaFu0ij
	8XVaJIo4QIbc8lo1B3VzAfO0jswpFbWHLdP5fq82qCEaxU3IMbVFzRMjwqfpGF5Muw
	SdjhBK2KGcTY2VRqZufaJSU9LV06J3rxO/929xTuDJ2vmpHLUpVsgH8ry9601MQeyD
	6uAtmwSZ4OuonxzGDt/6vRSpPb+o0Feaom4CmvpU9I5OJJaPqOwDLUN7PusdZv9F2Q
	F4HXI9XYxKSsA==
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
X-List-Received-Date: Tue, 03 Feb 2015 17:21:08 -0000
Content-Type: multipart/alternative;
	boundary="------------080900010509040307010708"

--------------080900010509040307010708
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Add resolvconf to your image.

That being said, I'm using dora and the package there was very 
incomplete. I had to add quite a bit in a .bbappend to make it work 
properly.


On 2/3/2015 9:43 AM, Jim Abernathy wrote:
> I find that for Static IPs, I have to manually add my DNS name servers 
> to /etc/resolv.conf instead of what I'm use to and that's put the line 
> in /etc/network/interfaces with the dns-nameserver [IP] [IP].
>
> My knowledge base comes from Ubuntu Server where putting everything in 
> "/etc/network/interfaces" covers most things.
>
> Anyone know why?
>
> Jim A
>
>
>


--------------080900010509040307010708
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    Add resolvconf to your image.<br>
    <br>
    That being said, I'm using dora and the package there was very
    incomplete. I had to add quite a bit in a .bbappend to make it work
    properly.<br>
    <br>
    <br>
    On 2/3/2015 9:43 AM, Jim Abernathy wrote:<br>
    <blockquote cite="mid:BAY169-W273E3222BFC4F033CF313EAE3D0@phx.gbl"
      type="cite">
      <style><!--
.hmmessage P
{
margin:0px;
padding:0px
}
body.hmmessage
{
font-size: 12pt;
font-family:Calibri
}
--></style>
      <div dir="ltr">I find that for Static IPs, I have to manually add
        my DNS name servers to /etc/resolv.conf instead of what I'm use
        to and that's put the line in /etc/network/interfaces with the
        dns-nameserver [IP] [IP].<br>
        <br>
        My knowledge base comes from Ubuntu Server where putting
        everything in "/etc/network/interfaces" covers most things.<br>
        <br>
        Anyone know why?<br>
        <br>
        Jim A<br>
        <br>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------080900010509040307010708--
