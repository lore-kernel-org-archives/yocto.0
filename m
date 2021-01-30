Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.2629.1612006017323647842
 for <yocto@lists.yoctoproject.org>;
 Sat, 30 Jan 2021 03:26:57 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 198.145.29.25, mailfrom: rpjday@crashcourse.ca)
Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 250D338C06B5
	for <yocto@yoctoproject.org>; Sat, 30 Jan 2021 11:26:57 +0000 (UTC)
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com ([174.114.100.179]:53820 helo=fedora)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1l5oP1-000478-6s
	for yocto@yoctoproject.org; Sat, 30 Jan 2021 06:26:55 -0500
Date: Sat, 30 Jan 2021 06:26:53 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: oddity: file_5.37 printing unexpected "octet-stream" mime type for ISO
Message-ID: <63c3b144-991-f277-91b2-15ff94dca5a6@crashcourse.ca>
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel8.indieserve.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel8.indieserve.net: authenticated_id: rpjday+crashcourse.ca/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: cpanel8.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Content-Type: multipart/mixed; boundary="8323328-99820963-1612006015=:5577"

--8323328-99820963-1612006015=:5577
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable


  (i asked about this on the OE list a couple days ago, but i have
more info and wanted to get a bit wider coverage as i really, really
want to de-mystify this issue.)

  on current project, upgrading from wind river WRL9 to LTS19
(effectively morty to zeus) involves going from file_5.28 to file_5.37
recipe, which is used by various install and upgrade scripts to
validate something is an actual ISO image by checking its mime type
(not the way i would have done it, but it's done).

  in WRL9, the mime type of an ISO image as printed by "file -i"
included the string "application/x-iso9660-image", and that's what
these scripts use to "verify" ISOness. so far, so good.

  suddenly, in LTS19, the very same "file -i" invocation instead
prints "application/octet-stream" -- this very same weirdness was
noticed elsewhere, like here in ubuntu launchpad:

  https://bugs.launchpad.net/ubuntu/+source/file/+bug/1763570

that bug report describes *precisely* the behaviour we're seeing.

  it's hard to believe the "file" command could have been that broken
so i looked around for another explanation, and noticed that any
single file could match multiple mime types, and that the file command
had a "--keep-going" option, so my colleague tried that and, sure
enough:

#   file -i --keep-going /var/tmp/ptx.iso
  /var/tmp/ptx.iso:
  application/x-iso9660-imageapplication/x-dosexec\012-
  application/octet-stream; charset=3Dbinary

so now we see both mime types being displayed, but it's not feasible
to change all the scripts to add the "--keep-going" option so i'm
baffled as to why the newer file command suddenly decides to print
"octet-stream" as the mime type rather than the more precise
"x-iso9669-image".

  more puzzlingly, the man page for the command states:

     -k, --keep-going
             Don't stop at the first match, keep going.  Subsequent
             matches will be have the string =E2=80=98\012- =E2=80=99 pre=
pended.  (If
             you want a newline, see the -r option.)  The magic pat=E2=80=
=90
             tern with the highest strength (see the -l option) comes
             first.

hang on ... if the pattern with the highest strength is allegedly
printed first, in the above, that is "x-iso9660-iamge", so why would
that not be the single mime type displayed by a normal invocation?

  has anyone else seen this? can it be reproduced? i'll try the latest
version of file later this weekend, but i'm open to assistance since
this weirdness is currently breaking all sorts of install and upgrade
procedures.

rday

--8323328-99820963-1612006015=:5577--
