Return-Path: <packages@autobuilder.yoctoproject.org>
Received: from autobuilder.yoctoproject.org (ab01.i.yoctoproject.org
	[10.0.10.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03DC8E0157B
	for <yocto@yoctoproject.org>; Mon, 12 Aug 2013 03:00:25 -0700 (PDT)
Received: by autobuilder.yoctoproject.org (Postfix, from userid 802)
	id EF37B407F1; Mon, 12 Aug 2013 10:00:24 +0000 (UTC)
Date: Mon, 12 Aug 2013 10:00:24 +0000
From: Yocto Project Package Report System <package-reporting@yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20130812100024.GA9897@ab01.i.yoctoproject.org>
MIME-Version: 1.0
User-Agent: Mutt/1.5.20 (2009-12-10)
Subject: [Package Report System]Upgrade recipes name list
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
X-List-Received-Date: Mon, 12 Aug 2013 10:00:25 -0000
X-Groupsio-MsgNum: 15431
Content-Type: multipart/mixed; boundary="a8Wt8u1KmwUX3Y2C"
Content-Disposition: inline

--a8Wt8u1KmwUX3Y2C
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This mail was sent out by Package Report System.
This message list those recipes which need to be upgraded. If maintainers believe some of them needn't to upgrade this time, they can fill in RECIPE_NO_UPDATE_REASON_pn-"xxx" in upstream_tracking files to ignore this recipe remainder until newer upstream version was detected.
Example:
RECIPE_NO_UPDATE_REASON_pn-"xxx" = "Not upgrade to 2.0 because the new version is unstable"
You can check the detail information at http://packages.yoctoproject.org/upgradepkgname


PackageName                   Version                       UpVersion                     Maintainer                                        NoUpgradeReason               
Upgradable Count: 0
Upgrade Total Count: 0
The based commit merge time is:
Mon Aug 12 10:23:32 2013 +0100
The based commit is:
commit 712622e2dbfa2559b873730bd1d4d23cc827b295
Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Mon Aug 12 10:22:40 2013 +0100
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--a8Wt8u1KmwUX3Y2C
Content-Type: image/png
Content-Disposition: attachment; filename="weekly_upgrde_history_chart.png"
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAGkAAAEsCAIAAABPAgoGAAAABmJLR0QA/wD/AP+gvaeTAAAPKElE
QVR4nO3ae1BUZR/A8YdcWDy4XCJBcDHBhkUGENvhOmwsV6UIhT+waKzoskxYEdnUlF0YK4MCpxJG
kqk0wBE0KAQbKJ2AUQRELgvCwiLIggkutyUW9nreP8608YIg/kKC9/19/trz7NnnPPv17J5lVyOa
pgkCeeDfXsAqhu3gsB0ctoNjLX7X9PR0nU73zjvvLHL/7OzsgoICw6axsbGLi4tQKIyJibm3Nd47
vV7/wAN3OC2USuWBAwcaGhoKCgrs7OwAM+/evXt8fPz777/fvHnzPbSbnp7W6XSL31+lUpmamh44
cIDZHBsbq66uPnToEEVRO3fuvLcl36Pnn38+IiLi6aefnjV+6dKl2tragwcP2trawmb+888/Jycn
KyoqRCLR3/84NE3r9fq5e883Tgi5a0pTU9OAv0RGRqampm7YsKG4uHiR82i12ns6Lk3TU1NTC6xn
ZGTEwcEhNDR05lk532x6vV6tVs8dd3Nz+/XXXwnzftfd3X348OHHH39cKBSKRKLe3l5mp/Hx8fT0
9IiICKFQePDgwZkTicXi9957LygoKCQk5PPPP9doNAus2MDIyMjV1ZXNZjObCoXi66+/joqKEggE
IpFIJpMx43FxcTU1NSKRKCAgICoqKjc31zDDxYsXmfFdu3YdOXKEGVSpVNHR0W1tbXFxcfv3709I
SJBKpd99911KSsrMoxcVFeXk5Mhksujo6MHBQUJISUnJs88+6+fnFxsbe+rUKWa33t7e2NjY9vb2
Xbt2ZWRkzH0WQUFB/f39UqmU0DQdExPz7rvvXr9+XSaTJSUlvfTSSzRN0zS9f//+J598sra2ViKR
JCcne3l5paSk0DT9xx9/BAUFHTlyRCaTnT9/Pigo6P3336fn+PLLL3fv3m3Y1Gg01dXVvr6+5eXl
zEhSUlJ8fHxbW1tbW9srr7wSGhqqUChomhYIBIGBgbm5ub29vfn5+V5eXmfPnqVpWiKRBAQEZGVl
yWSyyspKgUBw7NgxmqaVSiWfz4+Ojs7Ozm5ubu7v74+Njc3KyhocHJy5nvHx8aNHj0ZHR/f29mq1
2urqam9v74KCgoGBgeLiYm9v719++YU5io+Pz549e06cOCGVSmc9qZCQkJ9++umNN97IysoiU1NT
x48fHx8fZ+4rLy8PCgqiafrGjRt8Pv/KlSvM+NTUVFhYGNMuPT39xRdfNEx39OhRPz8/vV4/t52X
l5fwL76+vnw+/9tvv2XubWlp4fP5hqfX3d3t5eV1/vx5pt3bb79tmCctLe3111+nafqzzz4TiUSG
8dOnT4eFhRnaZWVlGe7au3fvyZMn5/5zFhQUxMbGMrcTExM//vhjw12HDx+Oj49n2vH5/JKSkrkP
N7QrKyuLjo5mmZqa7t27t6Oj49q1a2Kx+LfffjMxMSGEXL9+naKo7du3Myeqqampi4sLc7urq0ur
1WZmZjKbY2NjarX69u3bNjY2s05va2trw7VCr9dXVFTk5+cLhUInJ6euri6KogoLCw07W1pa3rx5
k7nN5/MN43w+v6KighAilUofffRRw7i7u/vIyMjt27fXrVtHCPH09LzzO8U8pFLpjh07Zs5WXFxM
//UX6sKzCYXCTz75hDUxMZGcnNzf3x8QEMDn83k8Xk5ODiHEyMiIEDLzPdXwPqVWq9lsNkVRzCZF
UYmJiWvWrJl7DOZaYdh87LHHwsLCLl++7OTkpNFojI2NDZMQQp566ikej8fc5nA4M4+rUCg0Go1a
rTY1NTWMm5mZEUImJiaYdubm5gs827nmzjY9PW144154Noqi/P39WZWVlX19fWfOnGH2PnfuHHO3
m5ubUqmUyWQODg7MSFtbm4+PDyFk27ZtPT09L7zwAjN+69at+vp6a2vrxax48+bNzDXBw8NjYmJi
z549TAJCSFlZ2caNG5nbXV1dERERzO3W1lZ7e3vm46FUKjVM1dnZaWxs/PDDD9/xanhXzGzh4eGG
I3K5XOY1txjh4eEPaLXaiYkJZk1dXV35+fk6nU6tVltbWzs6Oh46dEihUBBC8vLyhoaGmIf5+vrW
19fX1dURQiYnJz/44IMLFy4s8pAURcnlckIIj8eztLTMzs6maVqv1//www+ffvqpoWNhYaFYLCaE
dHd3FxYWhoaGEkJ8fHwuXLhQU1NDCFEoFNnZ2QKB4I7nOyFEqVQuvBIfH5/CwkLmiQ8MDOTl5QmF
wkU+C0KIQCBgBQcHnzp16s0337SxsRkbG4uPjz958uS+fftycnIyMjJefvnl8PBwDofD4XBiYmKY
U9rHx0ckEr366qvr168fGRlxdHSc9WlgAVu2bCkqKhoaGrKxscnMzExMTDx79iyLxVKr1SkpKRYW
Fsxu4eHhiYmJZmZmcrnc19c3ISGBEBISEiKRSJKSkmxsbORy+datWz/88MM7HsXBwSEvL290dPSt
t96abyXPPfdcV1dXXFycra3t0NBQQEDAvn37Ft9u7dq1hKZplUrV3Nzc0NAwPT1N07RCobh69Spz
WdHpdGKxuL6+XqfTzbriKBSKmpqaa9euabXaO16SFkOr1ba2ttbV1Rku9DRNCwSC6urq8fHxS5cu
dXR0zD3u5cuXZ33+mEWpVNbU1LS3t991AXK5vKamZubRF48AHnO/Me3+7VXcHX6PAmdEr7zv3K9e
vbplyxbDe9+KtRLbrRb4moXDdnDYDg7bwWE7OGwH91/tVCpVXl6eYXNycrKoqCg3N5f56x3N8ne7
pqamnJycGzduGEYyMjLYbLa7u/sXX3wxOTn5byxvRfu7nVKpNHxVRwjp6enRaDRPPPGEp6fn9u3b
Ozs7/43lrWh/t/P39/f19TVsDg8PG379tbOzk0gky720FW/e37anp6cN30RaWFh0d3d3dnYyZx9F
UcHBwcu0wBVs3nbm5ubMj5iEkLGxMVtbW2dnZ2dnZ0JIaWnpMq1uZZv3MwqPx1MoFMw3183NzVwu
dxlXtTrMe96x2ezQ0NC0tDQLCwtra+tt27Yt57JWhbt8B6VSqUZGRjZs2MD85MgoLS2NjIy8/2tb
6e7y/6DYbDbs/1r9P8C/yeCwHRy2g8N2cNgODtvBYTs4bAeH7eCwHRy2g8N2cNgODtvBYTs4bAeH
7eCwHRy2g8N2cNgODtvBYTs4bAeH7eCwHRy2g8N2cNgODtvBYTs4bAeH7eCwHRy2g8N2cNgODtvB
YTs4bAeH7eCwHRy2g8N2cNgODtvBYTs4bAeH7eCwHRy2g8N2cNgODtvBYTs4bAeH7eCwHRy2g8N2
cNgODtvBYTs4bAeH7eCwHRy2g8N2cNgODtvBYTs4bAeH7eCwHRy2g8N2cNgODtvBYTs4bAeH7eCw
HRy2g8N2cNgODtvBYTs4bAeH7eCwHRy2g8N2cNgODtvBYTs4bAeH7eCwHRy2g8N2cNgODtvBYTs4
bAeH7eCwHRy2g8N2cNgODtvBYTs4bAeH7eCwHRy2g8N2cNgODtvBYTs4bAeH7eCwHRy2g8N2cNgO
DtvBYTs4bAeH7eCwHRy2g8N2cNgODtvBYTs4bAeH7eCwHRy2g8N2cNgODtvBYTs4bAeH7eCwHRy2
g8N2cNgODtvBYTs4bAeH7eCwHRy2g8N2cNgODtvBYTs4bAeH7eCwHRy2g8N2cNgODtvBYTs4bAeH
7eCwHRy2g8N2cNgODtvBYTs4bAeH7eCwHRy2g8N2cNgODtvBYTs4bAeH7eCwHRy2g8N2cNgODtvB
YTs4bAeH7eCwHRy2g8N2cNgODtvBYTs4bAeH7eCwHRy2g8N2cNgODtvBYTs4bAeH7eCwHRy2g8N2
cNgODtvBYTs4bAeH7eCwHRy2g8N2cNgODtvBYTs4bAeH7eCwHRy2g8N2cNgODtvBYTs4bAeH7eCw
HRy2g8N2cNgODtvBYTs4bAfHWuC+8fHxsrIyY2Pj8PBwCwuLZVvTajHveafRaFJTU+3t7blcbmpq
Kk3Ty7msVWHe8661tXX9+vVCoZAQ0tTU1Nvb6+jouHzrWg3mPe/kcrmdnR1z297eXiKRLNeSVo15
zzuVSmVmZsbctrCwGB0d7ezs7OzsJIQMDw+XlpYu/hjDw8PW1tb/cKErcPJ523E4HKYUIWR0dNTW
1tbZ2dnZ2RmwgtLS0sjISMADV/jk875mPTw8BgYG1Go1IaSlpYXL5d6X1a1m8553VlZWfD4/LS2N
xWJ5enpu2rQJfAzY2bryJzda+MPH5OTk5OSkjY3NUq/qf8Fd2i2tpqamqqoqiqKCg4OdnJyYQZVK
debMmWeeeWbJJ+/o6KisrFy7dm1QUJCDg8PSTt7e3r58f5N1d3eXl5dHRUW5u7t/9dVXWq2WENLY
2Hjs2LG+vr4ln3x0dPTEiRNeXl5hYWGZmZkNDQ1LOPnIyEhBQcGalJQU2IzHjx/ncrkURZ0+ffrW
rVtOTk4dHR01NTW///47j8djs9l5eXkKhWLTpk3Nzc0tLS00Tbu6uvJ4PC6XW1VVxefzKYrq6elh
sVhyuVwgECzt5H19fcxpwuFwVCrVyMjI1q1bl2rywcFBLpcLP+8oimpvb6dpuqmpqa6ujhDS0tJi
aWnJZrMlEolGo2lpably5QohpLGx8cEHH/T29nZ3d29sbPzmm2+cnJyYz03+/v7e3t73Y3JPT8+Y
mBhCyNTUlFgsNoRbksldXV39/Pzg7dzc3Do6OmQy2SOPPKJSqaanpyUSiZubGzPe3d3N5/PlcrlO
p5NKpa6ursyjTExM1q1bZ2xsrNfrl2Hypqam1NTUwMDAme2WanL4a9bKyqq4uJjD4djZ2a1Zs2Zq
aqq3t3fHjh2WlpYlJSWmpqaOjo5TU1NqtVoulwcGBvb19bHZbHt7ew8Pj9raWo1Gw7x/T0xMNDc3
z3rNLsnkP/74o1gsTkhImPVR459PzmKxyD/5/o7FYm3cuLGystLZ2ZnH4507d87NzY0QQlEUh8Op
q6szjLu7uxNCamtrL168SAhRKpUKhcLc3Py+Tt7X13fz5s3XXnvNyspqySdvbW2tqKj4R9dZd3d3
nU730EMPOTs7Dw8PMysghLi5uZmYmJiZmbm4uMjlcmZ8586dVVVV2dnZH330kZWVleG1cJ8mF4vF
EokkOTk5KSkpKSnp559/XsLJhUKhRCJZ1s93hJChoSEzMzPDtwyrevLlbve/BH+vgMN2cNgODtvB
/QegON3h1TMpXQAAAABJRU5ErkJggg==

--a8Wt8u1KmwUX3Y2C
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--a8Wt8u1KmwUX3Y2C--
