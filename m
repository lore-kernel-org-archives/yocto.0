Return-Path: <442-103-8455@kylheku.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E0C7E00C93; Wed,  6 Mar 2019 14:55:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	FROM_STARTS_WITH_NUMS,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	https://www.dnswl.org/, low *      trust
	*      [64.59.134.12 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.7 FROM_STARTS_WITH_NUMS From: starts with several numbers
Received: from smtp-out-no.shaw.ca (smtp-out-no.shaw.ca [64.59.134.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14FC2E00BCC
	for <yocto@yoctoproject.org>; Wed,  6 Mar 2019 14:55:46 -0800 (PST)
Received: from kylheku.com ([70.79.163.252]) by shaw.ca with ESMTPA
	id 1fRxhW1lHlvAB1fRyhcqo8; Wed, 06 Mar 2019 15:55:46 -0700
X-Authority-Analysis: v=2.3 cv=AMNsc7SD c=1 sm=1 tr=0
	a=95A0EdhkF1LMGt25d7h1IQ==:117 a=95A0EdhkF1LMGt25d7h1IQ==:17
	a=IkcTkHD0fZMA:10 a=SMorJkV_YP8A:10 a=NTGMnVQrEZIA:10
	a=3VpiRF7a-cWHpSRFbPQA:9 a=QEXdDO2ut3YA:10
Received: from www-data by kylheku.com with local (Exim 4.72)
	(envelope-from <442-103-8455@kylheku.com>)
	id 1h1fRx-0004mj-7A; Wed, 06 Mar 2019 14:55:45 -0800
To: "Burton, Ross" <ross.burton@intel.com>
X-PHP-Originating-Script: 501:rcmail.php
MIME-Version: 1.0
Date: Wed, 06 Mar 2019 14:55:45 -0800
From: "Kaz Kylheku (poky)" <442-103-8455@kylheku.com>
In-Reply-To: <e382eb0d50ca12ccafe454636717459e@mail.kylheku.com>
References: <4d30a0e379c74c9e673fd65721463b04@mail.kylheku.com>
	<fd98415c1d3aebb569a588bfa0faf9f3d86ca9cd.camel@linuxfoundation.org>
	<e21f2565c099e27ab58c7c7feaafdb95@mail.kylheku.com>
	<CAJTo0LZ=ebR2Mao_-vyFN8YTg2pfse2Ls476pb5hHZaQGMBpkA@mail.gmail.com>
	<e382eb0d50ca12ccafe454636717459e@mail.kylheku.com>
Message-ID: <cede6693365e450c00ad97f194b281fd@mail.kylheku.com>
X-Sender: 442-103-8455@kylheku.com
User-Agent: Roundcube Webmail/0.9.2
X-CMAE-Envelope: MS4wfC8Uy0P/mxLymO3g0WiRhtBa4hR/YRAji5QbfGgDf05Jti/yXkdvHQgzGz7XoNn8ExuRwAzxfrbsqxd3462ccSY2Nlrd6O+Q4r5GBG0mjbiQbW92s1t4
	556jPYKl0ywqF+F02D3D+c1WfCQORWzfsgWibdNxQbCnKU1rZH/pW1KbjKOSzVbf/h5KpyoSa622Ci3jRjFtdRS2gZBhOvsNepjCqWDRUCwUX4jNfwB5nrk3
	Fy0l2tNOUZOj2vBmKiRZH/Ptal22P3O+yCrYEnQ6wKA=
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Incremental rebuild doesn't pick up FILES changes.
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
X-List-Received-Date: Wed, 06 Mar 2019 22:55:47 -0000
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: quoted-printable

On 2019-03-06 14:26, Kaz Kylheku (poky) wrote:
> So I'm guessing this should be
>=20
>   FILES_${PN}-core_remove =3D

No dice. FILES_${PN}-core_remove =3D "${libdir}/python-2.7/encodings" does=
=20
not register anywhere. In the "bitbake -e" output, no _remove event=20
appears for FILES_python-core, and the image still contains that=20
encodings directory.

I'm afraid I'm outsmarted here by the Smart Dictionary.

This ugly fallback is doing what I want though:

   do_install_append() {
     encodings=3D${D}/usr/lib/python2.7/encodings

     if [ -e "$encodings" ] ; then
       find "$encodings" -type f | grep -v -E=20
'/(utf_8|aliases)\.(py|pyc)$' | xargs rm -f
     fi
   }



