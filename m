Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.14293.1592938365121740398
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Jun 2020 11:52:45 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=Z9YjO+s8;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: twoerner@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3300E01D74; Tue, 23 Jun 2020 11:52:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.160.170 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05FFFE01D30
	for <yocto@yoctoproject.org>; Tue, 23 Jun 2020 11:52:43 -0700 (PDT)
Received: by mail-qt1-f170.google.com with SMTP id g13so5857712qtv.8
        for <yocto@yoctoproject.org>; Tue, 23 Jun 2020 11:52:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=PmKS+k8NJhIWpvsZnMRbb+fhJFSJdQTSSRigZi/iTSk=;
        b=Z9YjO+s8Xw5LYqoNPgcKcdv/wdd2Ztyc4qS/gCJFiRW9TYP6qjg3aLq2/uL6YZ9w3Z
         mn1lpnVoQGk6gM6OjKFq5EVIzC96ImZe7eyRyrVbSNOsSCwVVfbFBjNz8IZNxdBEMJqI
         Jqqm0kvi/2XeCgq0kcWw82WDTd2etnISlyVRmrDIzyJs0yXHHE/jkjjRokmG4NQ82v8K
         VAbeV+/TA3+9CFJMU8ifQV1pMZDVi93/Ee610KliaO8nrwVO9wtORUVjkDeN0GOH9oQl
         BfedhSVsJVXDHqOIs279L9Hw8t7Rd2HSTER7lKo1xhOuHYsfSdh89v7HYKIDZYWSDjCK
         fnlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=PmKS+k8NJhIWpvsZnMRbb+fhJFSJdQTSSRigZi/iTSk=;
        b=WjO99rcLJN4xb/2xln3qySl3Pc5gPjkTEF8DDYgQuzjXcY+nx7aQ/jvI1gsPyiH9D1
         ihTtTHDrI5QM+YfVAUfUvqNBE+qQ1H6BvSTuiHsmZOuWf6FmFkHDNrzvfQhxzsWfOYAL
         JmbfSFaN+bjcSieZd8GOJIeFaTiRO+Fy6NV7OAXbgqlaf62ixwyoX2wVpD7lHRVs1KzW
         fYKVifT6GblsMbiMqkmiXcaU9wuoJA7lRDWGRZBSC9aW6h3C58xQu+4wCPn1mlsTX/iY
         c0jaVWKhs3sHHK+6YlDzuWwAzquUANkwGR4w6pcmeypZgf+xB4N7EdgWcEXbG3wdLezY
         rC0Q==
X-Gm-Message-State: AOAM532kDJX9TQp2e3YKaN+EMlBCywB2maQaR5xjIjtWzaeykFTbsdQX
	bxrMMe22wzTk7S3aO8u1CXHYmJE4
X-Google-Smtp-Source: ABdhPJx7V/tMj/6TmCHMPQYBYqF2IHcdPRzyYHAm8tyRGH1roBmAwv7IXQmtYJnrFJaZ326YW1AbzQ==
X-Received: by 2002:ac8:4297:: with SMTP id o23mr7740347qtl.74.1592938362572;
        Tue, 23 Jun 2020 11:52:42 -0700 (PDT)
Received: from linux-uys3 ([206.248.190.95])
        by smtp.gmail.com with ESMTPSA id h7sm1258478qkk.102.2020.06.23.11.52.40
        for <yocto@yoctoproject.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Jun 2020 11:52:41 -0700 (PDT)
Date: Tue, 23 Jun 2020 14:52:38 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@yoctoproject.org
Subject: Yocto Technical Team Minutes, Engineering Sync, for June 16 2020
Message-ID: <20200623185238.GA16972@linux-uys3>
MIME-Version: 1.0
User-Agent: Mutt/1.6.0 (2016-04-01)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Yocto Technical Team Minutes, Engineering Sync, for June 16 2020
archive: https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7=
QwKC5wWVDg9dDH4/edit

=3D=3D disclaimer =3D=3D
Best efforts are made to ensure the below is accurate and valid. However,
errors sometimes happen. If any errors or omissions are found, please fee=
l
free to reply to this email with any corrections.

=3D=3D attendees =3D=3D
Trevor Woerner, Jan-Simon M=C3=B6ller, Armin Kuster, Alejandro, Richard P=
urdie,
Stephen Jolly, Steve Sakoman, David Reyna, Mark Morton, Tim Orling,
Scott Murray, Joshua Watt, Vineela, Michael Halstead, Ross Burton, Randy
MacLeod, Daniel Dragomir, Paul Barker, Bruce Ashfield, Jeremy Puhlman, Ma=
rk
Asselstine, Peter Kjellerstedt

=3D=3D notes =3D=3D
- 3.1.1 just out of QA, looks good, will go to TSC for release
- 3.2-m1 built shortly (next day or 2)
- still struggling to find maintainers for key components
- kudos to Paul Barker and Joshua Watt for key patches

=3D=3D general =3D=3D
Randy: growth of medium+ is apparent
Steven Jolly: mediums down, medium+ up. perhaps an issue of grading
RP: there=E2=80=99s a natural undulation that corresponds with releases

RP: to Michael: do we have the data going back 10 years?
MH: not for full 10 years
RP: i=E2=80=99d like to get the WDD charts going back as far as possible
see: https://wiki.yoctoproject.org/charts/combo.html

RP: kudos to Paul and JPEW for stability improvements, some are invasive,
    don=E2=80=99t think we should backport them, however

RP: i see Mark Morton is on, any updates?
MM: should see updates later today
RP: lots of stuff on AB, testing, etc aren=E2=80=99t documented anywhere,=
 these
    changes are to improve these areas
MM: there=E2=80=99s a meeting tomorrow to discuss conversion to Sphinx, k=
udos to Nico

David R: links are up to yocto devday! lots of good content, good speaker=
s,
    separate from ELC
JPEW: same platform as ELC?
David R: no, we=E2=80=99re just using zoom (professional, holds 500 peopl=
e)
Scott: using the slide deck as before?
David: yes, we=E2=80=99ll each host our own slides, but i want a master,
    consolidated deck
JPEW: 16x9 slides please?
David: yes, we have to =E2=98=BA

Randy: maybe we can recruit at devday too (maintainers for key areas)?
RP: if anyone has any other ides, please approach the TSC
JPEW: i like to add a =E2=80=9Chow to get involved=E2=80=9D slide at the =
end of any
    presentation
RP: should start something on wiki, then it can be used for more than sli=
des
    in presentations
Randy: sometimes it=E2=80=99s difficult for someone to contribute due to =
lawyers
RP: best to introduce the lawyers from one company (who can=E2=80=99t fig=
ure it out)
    to lawyers who have figured it out so they can talk in their own lang=
uage
Randy: any suggestions?
RP: i=E2=80=99ll poke LF

Paul: =E2=80=9Clatest activity=E2=80=9D on yocto website seems to have st=
opped updating
    about a month ago (Scott noticed it too)
Michael: i=E2=80=99ll raise it with Tracy and Nico, should be an easy fix
