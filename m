Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7EC54E00A9C; Tue, 21 Nov 2017 12:10:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f44.google.com (mail-pg0-f44.google.com [74.125.83.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3636BE006CA
	for <yocto@yoctoproject.org>; Tue, 21 Nov 2017 12:10:32 -0800 (PST)
Received: by mail-pg0-f44.google.com with SMTP id u3so11029788pgn.7
	for <yocto@yoctoproject.org>; Tue, 21 Nov 2017 12:10:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=3uBFX+V7iqcYgZm/a0ftCZtMZoU3HnpQbZ/Tfog7sDw=;
	b=K/Scvo4fwuKr7zAFhSDQXnCIV3e1DDE8y1wd1pTouv2j9HpLkUWAJmi8HQyryezDHe
	vKNgVsqQDjbGi6iegZvjZG6g2sVRcieKAgD+B27S+ejOwCKD4OKlGYw8xcBAwLQr4aAu
	+fAFUXKLVIG0tM4ykTOhtZy1YiYgC3xRpqJDzvEsbhrvx3WrVDVL8Ss5VrrNpHWYmYhK
	vpsmvcuTrC1Xu/dTOdwBSyuc/6yqOOR3cevVA9popwCHUJ/dOVuc0a5sOJKKQ6KwxkIV
	No6RC0D8fUG5KvSLix5LPa/icHBqiU2h0cw8azoXPvECWVpNOuKfkRXrtS1+ca/0wIfL
	EnFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=3uBFX+V7iqcYgZm/a0ftCZtMZoU3HnpQbZ/Tfog7sDw=;
	b=FksgT7wOa3TRnP3eI0LP16i7IyQJ95ZmLnPAx0o26MUZiFf664KlB2GsHPOeS723Ip
	Ws1y7aRlJuy0H4QUaQ9ubVf1vyzIudVF8MjZIru67bNOcZLeqe+lBgE3Dk4xAduberY3
	QNZS5BXel0/aueGaEwsDKqEiSIxsOtz3OUOh4iCYOOWEqh5IE54WvRTUb9QhWs4/t/1q
	pegZuHSmsfzcE67SaSHQhR/uE92qh153Mb0htkuFivkCrDzEJIIj9cdrDFSNpaIUZlze
	WCnhF7y4Lba1Du9vkgSl0vqL7RBrdfkuHfIE+G2Xt5oQgPJc2DLuyUmsCqhLrPiGhppO
	NdEQ==
X-Gm-Message-State: AJaThX4TyNsDpGrUj+788/UjW/NOJ6SDYJi5VhErTYNpjWsG+Eea6qdE
	ctrNS08/foTcmVRRLW6vmsTdPQ==
X-Google-Smtp-Source: AGs4zMaQyPO3cwxKWx2OskIIrfzuaC+xImmx8WUhlNWYOwEZIbHDwWLuBlNbyq/oM4wftEpCqCIW4A==
X-Received: by 10.99.121.4 with SMTP id u4mr8711381pgc.235.1511295032542;
	Tue, 21 Nov 2017 12:10:32 -0800 (PST)
Received: from [10.43.100.234] (50-233-148-156-static.hfc.comcastbusiness.net.
	[50.233.148.156]) by smtp.gmail.com with ESMTPSA id
	s71sm27500531pfa.147.2017.11.21.12.10.31
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 21 Nov 2017 12:10:31 -0800 (PST)
To: Hongxu Jia <hongxu.jia@windriver.com>, yocto@yoctoproject.org
References: <bfbfad0b-af40-5448-4aed-fc70eeb95c6c@windriver.com>
	<7bdd24ea-febf-86b4-e770-6f7533205d73@windriver.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <37b787d0-ef5a-d821-0c09-a8547c58c52d@gmail.com>
Date: Tue, 21 Nov 2017 12:10:31 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <7bdd24ea-febf-86b4-e770-6f7533205d73@windriver.com>
Cc: Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>,
	+lpd-cdc-core-dev <lpd-cdc-core-dev@windriver.com>,
	OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>,
	"Yang, Zhangle \(Eric\)" <Zhangle.Yang@windriver.com>
Subject: Re: Contribute meta-installer to yocto
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
X-List-Received-Date: Tue, 21 Nov 2017 20:10:34 -0000
Content-Type: multipart/alternative;
	boundary="------------BDACD15424B5B60F7AB658DB"
Content-Language: en-US

--------------BDACD15424B5B60F7AB658DB
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Hello,



On 11/21/2017 12:55 AM, Hongxu Jia wrote:
> Hi all,
>
> Wind River has maintained meta-installer for several years,
> and now we want to contribute it to yocto community.
>
> This layer provides an installation program based on
> OE platform. The installation program is anaconda from
> fedora, which is the installer of distribution Fedora,
> RedHat and Centos.
>
> The version of anaconda in meta-installer is 26.21.11
> which is based on Fedora 26.
>
> The meta-insatller requires:
> - systemd as init manager
> - python3
> - dnf2/rpm4
> - gobject-introspection which requires qemu-usermode
>   in MACHINE_FEATURES
>
> The meta-installer provides:
> - graphic install and text install.
>
> - package based (dnf/rpm) install and image (copy)
>   based install.
>
> - package based (dnf/rpm) install from local and
>   remote rpm sources such as CDs and DVDs, images
>   stored on a hard drive, NFS, HTTP, and FTP.
>
> - kickstart install which provides a fully unattended
>   installation that can be duplicated on scores of machines.
>
> - install over VNC on headless machines.
>
> - timezone setting.
>
> - root password setting.
>
> - user account creation.
>
> - a variety of advanced storage devices including
>   LVM, Btrfs, Ext4, and filesystem encryption.
>
> The repository of meta-installer is temporary on the github
> for review:
> https://github.com/jiahongxujia/meta-installer
>
> In above github, the logo picture is undefined, if yocto
> could accept this layer, I will update the picture with
> "Yocto project Compatible".
>
> The attachments are the snapshots of a package based
> installation.
>
> Hopefully it is helpful for yocto, and any feedback is
> appreciated.

I believe it can go beyond helping Yocto and help the overall OE community.

CC'ing oe mailings lists

>
> If yocto is interested in this layer and will accept it,
> I could send pull request or some one directly fetch
> from above github master branch.
If Yocto isn't I am sure OE will be.

Thank you Wind River for contributing your hard work for the greater
good of the community.

kind regards,
Armin
>
> //Hongxu
>
>


--------------BDACD15424B5B60F7AB658DB
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hello,</p>
    <p><br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 11/21/2017 12:55 AM, Hongxu Jia
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:7bdd24ea-febf-86b4-e770-6f7533205d73@windriver.com">Hi
      all,
      <br>
      <br>
      Wind River has maintained meta-installer for several years,
      <br>
      and now we want to contribute it to yocto community.
      <br>
      <br>
      This layer provides an installation program based on
      <br>
      OE platform. The installation program is anaconda from
      <br>
      fedora, which is the installer of distribution Fedora,
      <br>
      RedHat and Centos.
      <br>
      <br>
      The version of anaconda in meta-installer is 26.21.11
      <br>
      which is based on Fedora 26.
      <br>
      <br>
      The meta-insatller requires:
      <br>
      - systemd as init manager
      <br>
      - python3
      <br>
      - dnf2/rpm4
      <br>
      - gobject-introspection which requires qemu-usermode
      <br>
        in MACHINE_FEATURES
      <br>
      <br>
      The meta-installer provides:
      <br>
      - graphic install and text install.
      <br>
      <br>
      - package based (dnf/rpm) install and image (copy)
      <br>
        based install.
      <br>
      <br>
      - package based (dnf/rpm) install from local and
      <br>
        remote rpm sources such as CDs and DVDs, images
      <br>
        stored on a hard drive, NFS, HTTP, and FTP.
      <br>
      <br>
      - kickstart install which provides a fully unattended
      <br>
        installation that can be duplicated on scores of machines.
      <br>
      <br>
      - install over VNC on headless machines.
      <br>
      <br>
      - timezone setting.
      <br>
      <br>
      - root password setting.
      <br>
      <br>
      - user account creation.
      <br>
      <br>
      - a variety of advanced storage devices including
      <br>
        LVM, Btrfs, Ext4, and filesystem encryption.
      <br>
      <br>
      The repository of meta-installer is temporary on the github
      <br>
      for review:
      <br>
      <a class="moz-txt-link-freetext" href="https://github.com/jiahongxujia/meta-installer">https://github.com/jiahongxujia/meta-installer</a>
      <br>
      <br>
      In above github, the logo picture is undefined, if yocto
      <br>
      could accept this layer, I will update the picture with
      <br>
      "Yocto project Compatible".
      <br>
      <br>
      The attachments are the snapshots of a package based
      <br>
      installation.
      <br>
      <br>
      Hopefully it is helpful for yocto, and any feedback is
      <br>
      appreciated.
      <br>
    </blockquote>
    <br>
    I believe it can go beyond helping Yocto and help the overall OE
    community.<br>
    <br>
    CC'ing oe mailings lists<br>
    <br>
    <blockquote type="cite"
      cite="mid:7bdd24ea-febf-86b4-e770-6f7533205d73@windriver.com">
      <br>
      If yocto is interested in this layer and will accept it,
      <br>
      I could send pull request or some one directly fetch
      <br>
      from above github master branch.
      <br>
    </blockquote>
    If Yocto isn't I am sure OE will be.<br>
    <br>
    Thank you Wind River for contributing your hard work for the greater
    good of the community.<br>
    <br>
    kind regards,<br>
    Armin<br>
    <blockquote type="cite"
      cite="mid:7bdd24ea-febf-86b4-e770-6f7533205d73@windriver.com">
      <br>
      //Hongxu
      <br>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------BDACD15424B5B60F7AB658DB--
