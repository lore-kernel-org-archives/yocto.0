Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5796BE002AB
	for <yocto@yoctoproject.org>; Tue, 25 Dec 2012 11:16:57 -0800 (PST)
Received: from wnpgmb0903w-ds01-73-59.dynamic.mtsallstream.net
	([207.161.73.59]:54298 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1TnZzk-0002Uf-FO
	for yocto@yoctoproject.org; Tue, 25 Dec 2012 14:16:56 -0500
Date: Tue, 25 Dec 2012 13:16:53 -0600 (CST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1212251309530.4843@oneiric>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: which is the *official* yocto "download" page?
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
X-List-Received-Date: Tue, 25 Dec 2012 19:16:57 -0000
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1037039126-1356463016=:4843"

--8323329-1037039126-1356463016=:4843
Content-Type: TEXT/PLAIN; charset=ISO-8859-7
Content-Transfer-Encoding: 8BIT


  the poky.ent file in the docs defines this:

<!ENTITY YOCTO_DL_URL "http://downloads.yoctoproject.org">

while elsewhere (but i don't remember where) this is described as the
downloads page:

https://www.yoctoproject.org/downloads

which does not take you to the same place.

  and just to add to the confusion, the current dev manual contains
(in section 2.2):

"Tarball Extraction: If you are not going to contribute back into the
Yocto Project, you can simply download a Yocto Project release you
want from the website¢s download page."

where the link is http://www.yoctoproject.org/download, which
redirects you here:

https://www.yoctoproject.org/download/yocto-project-13-poky-80

  so that's three different "download" pages so far.

rday

p.s.  IMHO, any reference to a generic "download" page should take you
to a single top-level download URL *under* which all downloads and
downloading info can be found.  it should *not* take you to a sub-page
of, say, poky tarballs, unless the link specifically *says* it's to
the download directory of poky tarballs.  i refer, of course, to that
third example above.

--8323329-1037039126-1356463016=:4843--
