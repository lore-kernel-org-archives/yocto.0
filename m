Return-Path: <andy.pont@sdcsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C3DBE00AE6; Mon, 14 Oct 2019 06:26:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MIME_QP_LONG_LINE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [216.40.44.156 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from smtprelay.hostedemail.com (smtprelay0156.hostedemail.com
	[216.40.44.156])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9827E00805
	for <yocto@yoctoproject.org>; Mon, 14 Oct 2019 06:26:53 -0700 (PDT)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
	[216.40.38.60])
	by smtprelay01.hostedemail.com (Postfix) with ESMTP id EEB42100E7B47;
	Mon, 14 Oct 2019 13:26:52 +0000 (UTC)
X-Session-Marker: 616E64792E706F6E744073646373797374656D732E636F6D
X-HE-Tag: waves90_5910a75593f46
X-Filterd-Recvd-Size: 3342
Received: from [192.168.10.100] (unknown [5.133.40.160])
	(Authenticated sender: andy.pont@sdcsystems.com)
	by omf13.hostedemail.com (Postfix) with ESMTPA;
	Mon, 14 Oct 2019 13:26:51 +0000 (UTC)
From: "Andy Pont" <andy.pont@sdcsystems.com>
To: "Maciej Pijanowski" <maciej.pijanowski@3mdeb.com>
Date: Mon, 14 Oct 2019 13:26:50 +0000
Message-Id: <em2ee59401-340f-43fc-8a33-a4fba8cb7b19@andys-imac.leeshillfarm.local>
In-Reply-To: <embc564463-42d3-4bec-8064-19278acc8b91@andys-imac.leeshillfarm.local>
References: <em926f07ef-bb18-4cd8-a0b5-f3fc191114c4@andys-imac.leeshillfarm.local>
	<7f04b29d-9ac6-28d2-2db8-33eae0289ccc@3mdeb.com>
	<embc564463-42d3-4bec-8064-19278acc8b91@andys-imac.leeshillfarm.local>
User-Agent: eM_Client/7.2.35700.0
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Partitioning SD cards
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Andy Pont <andy.pont@sdcsystems.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 14 Oct 2019 13:26:54 -0000
Content-Type: multipart/alternative;
	boundary="------=_MBA9FA6861-6414-4CE8-B8C2-AE3E3135B011"

--------=_MBA9FA6861-6414-4CE8-B8C2-AE3E3135B011
Content-Type: text/plain; format=flowed; charset=utf-8
Content-Transfer-Encoding: quoted-printable

I wrote...=0A=0A>I have created a =E2=80=9Cwic=E2=80=9D directory in my cus=
tom layer and copied =0A>sdimage-bootpart.wks into it as sdimage-project.wk=
s without making any =0A>changes but =E2=80=9Cwic list image=E2=80=9D throw=
s an error with the new .wks file:=0A>=0A>UnicodeDecodeError: 'utf-8' codec =
can't decode byte 0xb0 in position =0A>37: invalid start byte=0AIgnore tha=
t, I deleted the directory and tried again and it is OK now!=0A=0A-Andy.=0A

--------=_MBA9FA6861-6414-4CE8-B8C2-AE3E3135B011
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><style id=3D"css_styles">blockquote.cite { margin-left: 5px; ma=
rgin-right: 0px; padding-left: 10px; padding-right:0px; border-left: 1px so=
lid #cccccc }=0Ablockquote.cite2 {margin-left: 5px; margin-right: 0px; padd=
ing-left: 10px; padding-right:0px; border-left: 1px solid #cccccc; margin-t=
op: 3px; padding-top: 0px; }=0Aa img { border: 0px; }=0Ali[style=3D'text-al=
ign: center;'], li[style=3D'text-align: right;'] {  list-style-position: in=
side;}=0Abody { font-family: Verdana; font-size: 12px;   }</style></head><b=
ody class=3D"plain"><div><div>I wrote...</div>=0A</div><div><br /></div><di=
v id=3D"x156c995d92fc4ad"><blockquote type=3D"cite" class=3D"cite2"><div id=
=3D"x8d469debe0aa44d"><blockquote type=3D"cite" class=3D"cite2"></blockquot=
e>I have created a =E2=80=9Cwic=E2=80=9D directory in my custom layer and c=
opied sdimage-bootpart.wks into it as sdimage-project.wks without making an=
y changes but =E2=80=9Cwic list image=E2=80=9D throws an error with the new =
.wks file:</div><div id=3D"x8d469debe0aa44d"><br /></div><div id=3D"x8d469=
debe0aa44d">UnicodeDecodeError: 'utf-8' codec can't decode byte 0xb0 in pos=
ition 37: invalid start byte</div></blockquote>Ignore that, I deleted the d=
irectory and tried again and it is OK now!</div><div id=3D"x156c995d92fc4ad=
"><br /></div><div id=3D"x156c995d92fc4ad">-Andy.</div><div id=3D"x156c995d=
92fc4ad"><br /><blockquote type=3D"cite" class=3D"cite2">=0A=0A=0A</blockqu=
ote></div>=0A</body></html>

--------=_MBA9FA6861-6414-4CE8-B8C2-AE3E3135B011--
